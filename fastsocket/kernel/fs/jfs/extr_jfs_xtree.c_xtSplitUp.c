
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int flag; int nextindex; int maxentry; } ;
struct TYPE_10__ {TYPE_2__ header; int * xad; } ;
typedef TYPE_3__ xtpage_t ;
typedef int xad_t ;
typedef int tid_t ;
struct xtsplit {int index; int len; int addr; int off; int flag; struct metapage* mp; struct pxdlist* pxdlist; } ;
struct TYPE_8__ {int offset; int length; } ;
struct xtlock {TYPE_1__ lwm; } ;
struct tlock {int lock; } ;
struct pxdlist {scalar_t__ maxnpxd; int * pxd; scalar_t__ npxd; } ;
struct metapage {int dummy; } ;
struct inode {int i_sb; int i_mode; } ;
struct btstack {int nsplit; } ;
struct btframe {int index; int bn; } ;
typedef int s64 ;
typedef int pxd_t ;
struct TYPE_12__ {int mode2; } ;
struct TYPE_11__ {int nbperpage; } ;


 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 struct btframe* BT_POP (struct btstack*) ;
 int BT_ROOT ;
 int COMMIT_Nolink ;
 int EIO ;
 int INLINEEA ;
 TYPE_7__* JFS_IP (struct inode*) ;
 TYPE_6__* JFS_SBI (int ) ;
 int L2XTSLOTSIZE ;
 int PSIZE ;
 int PXDaddress (int *,int ) ;
 int PXDlength (int *,int) ;
 int S_ISDIR (int ) ;
 int XAD_NEW ;
 size_t XTENTRYSTART ;
 int XTROOTMAXSLOT ;
 int XT_GETPAGE (struct inode*,int ,struct metapage*,int ,TYPE_3__*,int) ;
 TYPE_3__* XT_PAGE (struct inode*,struct metapage*) ;
 int XT_PUTENTRY (int *,int ,int ,int,int ) ;
 int XT_PUTPAGE (struct metapage*) ;
 int cpu_to_le16 (int) ;
 int dbAlloc (struct inode*,int ,int ,int *) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int memmove (int *,int *,int) ;
 int min (int,int) ;
 int offsetXAD (int *) ;
 int test_cflag (int ,struct inode*) ;
 int tlckGROW ;
 int tlckXTREE ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 int xtSplitPage (int ,struct inode*,struct xtsplit*,struct metapage**,int *) ;
 int xtSplitRoot (int ,struct inode*,struct xtsplit*,struct metapage**) ;

__attribute__((used)) static int
xtSplitUp(tid_t tid,
   struct inode *ip, struct xtsplit * split, struct btstack * btstack)
{
 int rc = 0;
 struct metapage *smp;
 xtpage_t *sp;
 struct metapage *rmp;
 s64 rbn;
 struct metapage *rcmp;
 xtpage_t *rcp;
 s64 rcbn;
 int skip;
 int nextindex;
 struct btframe *parent;
 xad_t *xad;
 s64 xaddr;
 int xlen;
 int nsplit;
 struct pxdlist pxdlist;
 pxd_t *pxd;
 struct tlock *tlck;
 struct xtlock *xtlck;

 smp = split->mp;
 sp = XT_PAGE(ip, smp);


 if ((sp->header.flag & BT_ROOT) && (!S_ISDIR(ip->i_mode)) &&
     (le16_to_cpu(sp->header.maxentry) < XTROOTMAXSLOT) &&
     (JFS_IP(ip)->mode2 & INLINEEA)) {
  sp->header.maxentry = cpu_to_le16(XTROOTMAXSLOT);
  JFS_IP(ip)->mode2 &= ~INLINEEA;

  BT_MARK_DIRTY(smp, ip);







  skip = split->index;
  nextindex = le16_to_cpu(sp->header.nextindex);
  if (skip < nextindex)
   memmove(&sp->xad[skip + 1], &sp->xad[skip],
    (nextindex - skip) * sizeof(xad_t));


  xad = &sp->xad[skip];
  XT_PUTENTRY(xad, split->flag, split->off, split->len,
       split->addr);


  le16_add_cpu(&sp->header.nextindex, 1);


  if (!test_cflag(COMMIT_Nolink, ip)) {
   tlck = txLock(tid, ip, smp, tlckXTREE | tlckGROW);
   xtlck = (struct xtlock *) & tlck->lock;
   xtlck->lwm.offset = (xtlck->lwm.offset) ?
       min(skip, (int)xtlck->lwm.offset) : skip;
   xtlck->lwm.length =
       le16_to_cpu(sp->header.nextindex) -
       xtlck->lwm.offset;
  }

  return 0;
 }






 if (split->pxdlist == ((void*)0)) {
  nsplit = btstack->nsplit;
  split->pxdlist = &pxdlist;
  pxdlist.maxnpxd = pxdlist.npxd = 0;
  pxd = &pxdlist.pxd[0];
  xlen = JFS_SBI(ip->i_sb)->nbperpage;
  for (; nsplit > 0; nsplit--, pxd++) {
   if ((rc = dbAlloc(ip, (s64) 0, (s64) xlen, &xaddr))
       == 0) {
    PXDaddress(pxd, xaddr);
    PXDlength(pxd, xlen);

    pxdlist.maxnpxd++;

    continue;
   }



   XT_PUTPAGE(smp);
   return rc;
  }
 }
 rc = (sp->header.flag & BT_ROOT) ?
     xtSplitRoot(tid, ip, split, &rmp) :
     xtSplitPage(tid, ip, split, &rmp, &rbn);

 XT_PUTPAGE(smp);

 if (rc)
  return -EIO;
 while ((parent = BT_POP(btstack)) != ((void*)0)) {



  rcmp = rmp;
  rcbn = rbn;
  rcp = XT_PAGE(ip, rcmp);





  XT_GETPAGE(ip, parent->bn, smp, PSIZE, sp, rc);
  if (rc) {
   XT_PUTPAGE(rcmp);
   return rc;
  }





  skip = parent->index + 1;




  nextindex = le16_to_cpu(sp->header.nextindex);



  if (nextindex == le16_to_cpu(sp->header.maxentry)) {

   split->mp = smp;
   split->index = skip;
   split->flag = XAD_NEW;
   split->off = offsetXAD(&rcp->xad[XTENTRYSTART]);
   split->len = JFS_SBI(ip->i_sb)->nbperpage;
   split->addr = rcbn;


   XT_PUTPAGE(rcmp);





   rc = (sp->header.flag & BT_ROOT) ?
       xtSplitRoot(tid, ip, split, &rmp) :
       xtSplitPage(tid, ip, split, &rmp, &rbn);
   if (rc) {
    XT_PUTPAGE(smp);
    return rc;
   }

   XT_PUTPAGE(smp);

  }



  else {
   BT_MARK_DIRTY(smp, ip);




   if (skip < nextindex)
    memmove(&sp->xad[skip + 1], &sp->xad[skip],
     (nextindex -
      skip) << L2XTSLOTSIZE);


   xad = &sp->xad[skip];
   XT_PUTENTRY(xad, XAD_NEW,
        offsetXAD(&rcp->xad[XTENTRYSTART]),
        JFS_SBI(ip->i_sb)->nbperpage, rcbn);


   le16_add_cpu(&sp->header.nextindex, 1);


   if (!test_cflag(COMMIT_Nolink, ip)) {
    tlck = txLock(tid, ip, smp,
           tlckXTREE | tlckGROW);
    xtlck = (struct xtlock *) & tlck->lock;
    xtlck->lwm.offset = (xtlck->lwm.offset) ?
        min(skip, (int)xtlck->lwm.offset) : skip;
    xtlck->lwm.length =
        le16_to_cpu(sp->header.nextindex) -
        xtlck->lwm.offset;
   }


   XT_PUTPAGE(smp);


   break;
  }
 }


 XT_PUTPAGE(rmp);

 return 0;
}
