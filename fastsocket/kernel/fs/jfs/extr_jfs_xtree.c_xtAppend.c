
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nextindex; int maxentry; } ;
struct TYPE_8__ {TYPE_1__ header; int * xad; } ;
typedef TYPE_3__ xtpage_t ;
typedef int xad_t ;
typedef int ulong ;
typedef int tid_t ;
struct xtsplit {int index; int flag; int len; void* addr; void* off; struct metapage* mp; struct pxdlist* pxdlist; } ;
struct TYPE_7__ {int offset; int length; } ;
struct xtlock {TYPE_2__ lwm; } ;
struct tlock {int lock; } ;
struct pxdlist {scalar_t__ maxnpxd; int * pxd; scalar_t__ npxd; } ;
struct metapage {int dummy; } ;
struct inode {int i_sb; } ;
struct btstack {int nsplit; int top; } ;
typedef void* s64 ;
typedef int s32 ;
typedef int pxd_t ;
struct TYPE_9__ {int nbperpage; } ;


 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 int EEXIST ;
 TYPE_5__* JFS_SBI (int ) ;
 int PXDaddress (int *,void*) ;
 int PXDlength (int *,int) ;
 int XAD_NEW ;
 int XT_GETSEARCH (struct inode*,int ,void*,struct metapage*,TYPE_3__*,int) ;
 int XT_INSERT ;
 int XT_PUTENTRY (int *,int,void*,int,void*) ;
 int XT_PUTPAGE (struct metapage*) ;
 int dbAllocBottomUp (struct inode*,void*,void*) ;
 int dbFree (struct inode*,void*,void*) ;
 int jfs_info (char*,int ,int,int,int ) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int min (int,int) ;
 int tlckGROW ;
 int tlckXTREE ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 int xtSearch (struct inode*,void*,void**,int*,struct btstack*,int ) ;
 int xtSplitUp (int ,struct inode*,struct xtsplit*,struct btstack*) ;

int xtAppend(tid_t tid,
      struct inode *ip, int xflag, s64 xoff, s32 maxblocks,
      s32 * xlenp,
      s64 * xaddrp,
      int flag)
{
 int rc = 0;
 struct metapage *mp;
 xtpage_t *p;
 s64 bn, xaddr;
 int index, nextindex;
 struct btstack btstack;
 struct xtsplit split;
 xad_t *xad;
 int cmp;
 struct tlock *tlck;
 struct xtlock *xtlck;
 int nsplit, nblocks, xlen;
 struct pxdlist pxdlist;
 pxd_t *pxd;
 s64 next;

 xaddr = *xaddrp;
 xlen = *xlenp;
 jfs_info("xtAppend: xoff:0x%lx maxblocks:%d xlen:%d xaddr:0x%lx",
   (ulong) xoff, maxblocks, xlen, (ulong) xaddr);
 if ((rc = xtSearch(ip, xoff, &next, &cmp, &btstack, XT_INSERT)))
  return rc;


 XT_GETSEARCH(ip, btstack.top, bn, mp, p, index);

 if (cmp == 0) {
  rc = -EEXIST;
  goto out;
 }

 if (next)
  xlen = min(xlen, (int)(next - xoff));




 xflag |= XAD_NEW;







 nextindex = le16_to_cpu(p->header.nextindex);
 if (nextindex < le16_to_cpu(p->header.maxentry))
  goto insertLeaf;




 nsplit = btstack.nsplit;
 split.pxdlist = &pxdlist;
 pxdlist.maxnpxd = pxdlist.npxd = 0;
 pxd = &pxdlist.pxd[0];
 nblocks = JFS_SBI(ip->i_sb)->nbperpage;
 for (; nsplit > 0; nsplit--, pxd++, xaddr += nblocks, maxblocks -= nblocks) {
  if ((rc = dbAllocBottomUp(ip, xaddr, (s64) nblocks)) == 0) {
   PXDaddress(pxd, xaddr);
   PXDlength(pxd, nblocks);

   pxdlist.maxnpxd++;

   continue;
  }



  goto out;
 }

 xlen = min(xlen, maxblocks);




 if ((rc = dbAllocBottomUp(ip, xaddr, (s64) xlen)))
  goto out;

 split.mp = mp;
 split.index = index;
 split.flag = xflag;
 split.off = xoff;
 split.len = xlen;
 split.addr = xaddr;
 if ((rc = xtSplitUp(tid, ip, &split, &btstack))) {

  dbFree(ip, *xaddrp, (s64) * xlenp);

  return rc;
 }

 *xaddrp = xaddr;
 *xlenp = xlen;
 return 0;




      insertLeaf:



 if ((rc = dbAllocBottomUp(ip, xaddr, (s64) xlen)))
  goto out;

 BT_MARK_DIRTY(mp, ip);





 tlck = txLock(tid, ip, mp, tlckXTREE | tlckGROW);
 xtlck = (struct xtlock *) & tlck->lock;


 xad = &p->xad[index];
 XT_PUTENTRY(xad, xflag, xoff, xlen, xaddr);


 le16_add_cpu(&p->header.nextindex, 1);

 xtlck->lwm.offset =
     (xtlck->lwm.offset) ? min(index,(int) xtlck->lwm.offset) : index;
 xtlck->lwm.length = le16_to_cpu(p->header.nextindex) -
     xtlck->lwm.offset;

 *xaddrp = xaddr;
 *xlenp = xlen;

      out:

 XT_PUTPAGE(mp);

 return rc;
}
