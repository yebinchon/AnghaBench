
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flag; void* nextindex; void* maxentry; scalar_t__ prev; scalar_t__ next; int self; } ;
struct metapage {TYPE_1__ header; int i_sb; int * xad; scalar_t__ data; } ;
typedef struct metapage xtpage_t ;
typedef int xad_t ;
typedef int tid_t ;
struct xtsplit {int index; struct metapage* mp; int addr; int len; int off; int flag; struct pxdlist* pxdlist; } ;
struct TYPE_7__ {size_t offset; size_t length; } ;
struct xtlock {TYPE_2__ lwm; } ;
struct tlock {int lock; } ;
struct pxdlist {size_t npxd; int * pxd; } ;
struct inode {TYPE_1__ header; int i_sb; int * xad; scalar_t__ data; } ;
typedef int s64 ;
typedef int pxd_t ;
struct TYPE_10__ {struct metapage i_xtroot; } ;
struct TYPE_9__ {int nbperpage; } ;
struct TYPE_8__ {int split; } ;


 int BT_INTERNAL ;
 int BT_LEAF ;
 int BT_MARK_DIRTY (struct metapage*,struct metapage*) ;
 int COMMIT_Nolink ;
 int EDQUOT ;
 int EIO ;
 int INCREMENT (int ) ;
 TYPE_5__* JFS_IP (struct metapage*) ;
 TYPE_4__* JFS_SBI (int ) ;
 int L2XTSLOTSIZE ;
 int PSIZE ;
 int XAD_NEW ;
 size_t XTENTRYSTART ;
 int XT_PUTENTRY (int *,int ,int ,int ,int ) ;
 int addressPXD (int *) ;
 void* cpu_to_le16 (size_t) ;
 struct metapage* get_metapage (struct metapage*,int ,int,int) ;
 int jfs_info (char*,struct metapage*,struct metapage*) ;
 size_t le16_to_cpu (void*) ;
 int lengthPXD (int *) ;
 int memmove (int *,int *,int) ;
 int release_metapage (struct metapage*) ;
 int test_cflag (int ,struct metapage*) ;
 int tlckGROW ;
 int tlckNEW ;
 int tlckXTREE ;
 struct tlock* txLock (int ,struct metapage*,struct metapage*,int) ;
 scalar_t__ vfs_dq_alloc_block (struct metapage*,int ) ;
 TYPE_3__ xtStat ;

__attribute__((used)) static int
xtSplitRoot(tid_t tid,
     struct inode *ip, struct xtsplit * split, struct metapage ** rmpp)
{
 xtpage_t *sp;
 struct metapage *rmp;
 xtpage_t *rp;
 s64 rbn;
 int skip, nextindex;
 xad_t *xad;
 pxd_t *pxd;
 struct pxdlist *pxdlist;
 struct tlock *tlck;
 struct xtlock *xtlck;

 sp = &JFS_IP(ip)->i_xtroot;

 INCREMENT(xtStat.split);




 pxdlist = split->pxdlist;
 pxd = &pxdlist->pxd[pxdlist->npxd];
 pxdlist->npxd++;
 rbn = addressPXD(pxd);
 rmp = get_metapage(ip, rbn, PSIZE, 1);
 if (rmp == ((void*)0))
  return -EIO;


 if (vfs_dq_alloc_block(ip, lengthPXD(pxd))) {
  release_metapage(rmp);
  return -EDQUOT;
 }

 jfs_info("xtSplitRoot: ip:0x%p rmp:0x%p", ip, rmp);






 BT_MARK_DIRTY(rmp, ip);

 rp = (xtpage_t *) rmp->data;
 rp->header.flag =
     (sp->header.flag & BT_LEAF) ? BT_LEAF : BT_INTERNAL;
 rp->header.self = *pxd;
 rp->header.nextindex = cpu_to_le16(XTENTRYSTART);
 rp->header.maxentry = cpu_to_le16(PSIZE >> L2XTSLOTSIZE);


 rp->header.next = 0;
 rp->header.prev = 0;




 nextindex = le16_to_cpu(sp->header.maxentry);
 memmove(&rp->xad[XTENTRYSTART], &sp->xad[XTENTRYSTART],
  (nextindex - XTENTRYSTART) << L2XTSLOTSIZE);





 skip = split->index;

 if (skip != nextindex)
  memmove(&rp->xad[skip + 1], &rp->xad[skip],
   (nextindex - skip) * sizeof(xad_t));

 xad = &rp->xad[skip];
 XT_PUTENTRY(xad, split->flag, split->off, split->len, split->addr);


 rp->header.nextindex = cpu_to_le16(nextindex + 1);

 if (!test_cflag(COMMIT_Nolink, ip)) {
  tlck = txLock(tid, ip, rmp, tlckXTREE | tlckNEW);
  xtlck = (struct xtlock *) & tlck->lock;
  xtlck->lwm.offset = XTENTRYSTART;
  xtlck->lwm.length = le16_to_cpu(rp->header.nextindex) -
      XTENTRYSTART;
 }
 BT_MARK_DIRTY(split->mp, ip);

 xad = &sp->xad[XTENTRYSTART];
 XT_PUTENTRY(xad, XAD_NEW, 0, JFS_SBI(ip->i_sb)->nbperpage, rbn);


 sp->header.flag &= ~BT_LEAF;
 sp->header.flag |= BT_INTERNAL;

 sp->header.nextindex = cpu_to_le16(XTENTRYSTART + 1);

 if (!test_cflag(COMMIT_Nolink, ip)) {
  tlck = txLock(tid, ip, split->mp, tlckXTREE | tlckGROW);
  xtlck = (struct xtlock *) & tlck->lock;
  xtlck->lwm.offset = XTENTRYSTART;
  xtlck->lwm.length = 1;
 }

 *rmpp = rmp;

 jfs_info("xtSplitRoot: sp:0x%p rp:0x%p", sp, rp);
 return 0;
}
