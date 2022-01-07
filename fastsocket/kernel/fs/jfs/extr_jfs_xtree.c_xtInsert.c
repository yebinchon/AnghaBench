
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nextindex; int maxentry; } ;
struct TYPE_7__ {TYPE_1__ header; int * xad; } ;
typedef TYPE_3__ xtpage_t ;
typedef int xad_t ;
typedef int ulong ;
typedef int tid_t ;
struct xtsplit {int index; int flag; int * pxdlist; scalar_t__ addr; scalar_t__ len; scalar_t__ off; struct metapage* mp; } ;
struct TYPE_6__ {int offset; int length; } ;
struct xtlock {TYPE_2__ lwm; } ;
struct tlock {int lock; } ;
struct metapage {int dummy; } ;
struct inode {int dummy; } ;
struct btstack {int top; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;


 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 int COMMIT_Nolink ;
 int EEXIST ;
 int XAD_NEW ;
 int XTENTRYSTART ;
 int XT_GETSEARCH (struct inode*,int ,scalar_t__,struct metapage*,TYPE_3__*,int) ;
 int XT_INSERT ;
 int XT_PUTENTRY (int *,int,scalar_t__,scalar_t__,scalar_t__) ;
 int XT_PUTPAGE (struct metapage*) ;
 scalar_t__ addressXAD (int *) ;
 int dbAlloc (struct inode*,scalar_t__,scalar_t__,scalar_t__*) ;
 int dbFree (struct inode*,scalar_t__,scalar_t__) ;
 int jfs_info (char*,int ,scalar_t__) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ lengthXAD (int *) ;
 int memmove (int *,int *,int) ;
 int min (int,int) ;
 int test_cflag (int ,struct inode*) ;
 int tlckGROW ;
 int tlckXTREE ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 int vfs_dq_alloc_block (struct inode*,scalar_t__) ;
 int vfs_dq_free_block (struct inode*,scalar_t__) ;
 int xtSearch (struct inode*,scalar_t__,scalar_t__*,int*,struct btstack*,int ) ;
 int xtSplitUp (int ,struct inode*,struct xtsplit*,struct btstack*) ;

int xtInsert(tid_t tid,
      struct inode *ip, int xflag, s64 xoff, s32 xlen, s64 * xaddrp,
      int flag)
{
 int rc = 0;
 s64 xaddr, hint;
 struct metapage *mp;
 xtpage_t *p;
 s64 bn;
 int index, nextindex;
 struct btstack btstack;
 struct xtsplit split;
 xad_t *xad;
 int cmp;
 s64 next;
 struct tlock *tlck;
 struct xtlock *xtlck;

 jfs_info("xtInsert: nxoff:0x%lx nxlen:0x%x", (ulong) xoff, xlen);
 if ((rc = xtSearch(ip, xoff, &next, &cmp, &btstack, XT_INSERT)))
  return rc;


 XT_GETSEARCH(ip, btstack.top, bn, mp, p, index);



 if ((cmp == 0) || (next && (xlen > next - xoff))) {
  rc = -EEXIST;
  goto out;
 }






 if ((xaddr = *xaddrp) == 0) {
  if (index > XTENTRYSTART) {
   xad = &p->xad[index - 1];
   hint = addressXAD(xad) + lengthXAD(xad) - 1;
  } else
   hint = 0;
  if ((rc = vfs_dq_alloc_block(ip, xlen)))
   goto out;
  if ((rc = dbAlloc(ip, hint, (s64) xlen, &xaddr))) {
   vfs_dq_free_block(ip, xlen);
   goto out;
  }
 }




 xflag |= XAD_NEW;







 nextindex = le16_to_cpu(p->header.nextindex);
 if (nextindex == le16_to_cpu(p->header.maxentry)) {
  split.mp = mp;
  split.index = index;
  split.flag = xflag;
  split.off = xoff;
  split.len = xlen;
  split.addr = xaddr;
  split.pxdlist = ((void*)0);
  if ((rc = xtSplitUp(tid, ip, &split, &btstack))) {

   if (*xaddrp == 0) {
    dbFree(ip, xaddr, (s64) xlen);
    vfs_dq_free_block(ip, xlen);
   }
   return rc;
  }

  *xaddrp = xaddr;
  return 0;
 }
 BT_MARK_DIRTY(mp, ip);


 if (index < nextindex)
  memmove(&p->xad[index + 1], &p->xad[index],
   (nextindex - index) * sizeof(xad_t));


 xad = &p->xad[index];
 XT_PUTENTRY(xad, xflag, xoff, xlen, xaddr);


 le16_add_cpu(&p->header.nextindex, 1);


 if (!test_cflag(COMMIT_Nolink, ip)) {
  tlck = txLock(tid, ip, mp, tlckXTREE | tlckGROW);
  xtlck = (struct xtlock *) & tlck->lock;
  xtlck->lwm.offset =
      (xtlck->lwm.offset) ? min(index,
           (int)xtlck->lwm.offset) : index;
  xtlck->lwm.length =
      le16_to_cpu(p->header.nextindex) - xtlck->lwm.offset;
 }

 *xaddrp = xaddr;

      out:

 XT_PUTPAGE(mp);

 return rc;
}
