
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u8 ;
typedef int tid_t ;
struct tlock {int lock; scalar_t__ data; } ;
struct pxdlist {size_t npxd; int * pxd; } ;
struct metapage {int lock; scalar_t__ data; } ;
struct lv {int offset; int length; } ;
struct ldtentry {int index; int namlen; } ;
struct inode {int lock; scalar_t__ data; } ;
struct idtentry {int namlen; } ;
struct dtsplit {int index; int nslot; int data; int key; struct pxdlist* pxdlist; struct tlock* mp; } ;
struct dtslot {int next; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
typedef scalar_t__ s64 ;
typedef int pxd_t ;
struct TYPE_10__ {int flag; int nextindex; int stblindex; int maxslot; int freelist; int freecnt; void* prev; void* next; int self; } ;
struct TYPE_11__ {TYPE_1__ header; struct dtslot* slot; } ;
typedef TYPE_2__ dtpage_t ;


 int ASSERT (int) ;


 int BT_MARK_DIRTY (struct tlock*,struct tlock*) ;
 int BT_TYPE ;
 scalar_t__ DO_INDEX (struct tlock*) ;
 int DT_GETPAGE (struct tlock*,scalar_t__,struct tlock*,int,TYPE_2__*,int) ;
 size_t* DT_GETSTBL (TYPE_2__*) ;
 TYPE_2__* DT_PAGE (struct tlock*,struct tlock*) ;
 int DT_PUTPAGE (struct tlock*) ;
 int EDQUOT ;
 int EIO ;
 int L2DTSLOTSIZE ;
 int NDTINTERNAL (int ) ;
 int NDTLEAF (int ) ;
 int NDTLEAF_LEGACY (int ) ;
 int PSIZE ;
 scalar_t__ addressPXD (int *) ;
 void* cpu_to_le64 (scalar_t__) ;
 int discard_metapage (struct tlock*) ;
 int dtInsertEntry (TYPE_2__*,int,int ,int ,struct dt_lock**) ;
 int dtMoveEntry (TYPE_2__*,int,TYPE_2__*,struct dt_lock**,struct dt_lock**,scalar_t__) ;
 struct tlock* get_metapage (struct tlock*,scalar_t__,int,int) ;
 int jfs_info (char*,struct tlock*,struct tlock*,struct tlock*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (void*) ;
 int lengthPXD (int *) ;
 int modify_index (int ,struct tlock*,int ,scalar_t__,int,struct tlock**,scalar_t__*) ;
 int release_metapage (struct tlock*) ;
 int tlckDTREE ;
 int tlckENTRY ;
 int tlckNEW ;
 int tlckRELINK ;
 scalar_t__ txLinelock (struct dt_lock*) ;
 struct tlock* txLock (int ,struct tlock*,struct tlock*,int) ;
 scalar_t__ vfs_dq_alloc_block (struct tlock*,int ) ;

__attribute__((used)) static int dtSplitPage(tid_t tid, struct inode *ip, struct dtsplit * split,
     struct metapage ** rmpp, dtpage_t ** rpp, pxd_t * rpxdp)
{
 int rc = 0;
 struct metapage *smp;
 dtpage_t *sp;
 struct metapage *rmp;
 dtpage_t *rp;
 s64 rbn;
 struct metapage *mp;
 dtpage_t *p;
 s64 nextbn;
 struct pxdlist *pxdlist;
 pxd_t *pxd;
 int skip, nextindex, half, left, nxt, off, si;
 struct ldtentry *ldtentry;
 struct idtentry *idtentry;
 u8 *stbl;
 struct dtslot *f;
 int fsi, stblsize;
 int n;
 struct dt_lock *sdtlck, *rdtlck;
 struct tlock *tlck;
 struct dt_lock *dtlck;
 struct lv *slv, *rlv, *lv;


 smp = split->mp;
 sp = DT_PAGE(ip, smp);




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

 jfs_info("dtSplitPage: ip:0x%p smp:0x%p rmp:0x%p", ip, smp, rmp);

 BT_MARK_DIRTY(rmp, ip);



 tlck = txLock(tid, ip, rmp, tlckDTREE | tlckNEW);
 rdtlck = (struct dt_lock *) & tlck->lock;

 rp = (dtpage_t *) rmp->data;
 *rpp = rp;
 rp->header.self = *pxd;

 BT_MARK_DIRTY(smp, ip);





 tlck = txLock(tid, ip, smp, tlckDTREE | tlckENTRY);
 sdtlck = (struct dt_lock *) & tlck->lock;


 ASSERT(sdtlck->index == 0);
 slv = & sdtlck->lv[0];
 slv->offset = 0;
 slv->length = 1;
 sdtlck->index++;




 nextbn = le64_to_cpu(sp->header.next);
 rp->header.next = cpu_to_le64(nextbn);
 rp->header.prev = cpu_to_le64(addressPXD(&sp->header.self));
 sp->header.next = cpu_to_le64(rbn);




 rp->header.flag = sp->header.flag;


 rp->header.nextindex = 0;
 rp->header.stblindex = 1;

 n = PSIZE >> L2DTSLOTSIZE;
 rp->header.maxslot = n;
 stblsize = (n + 31) >> L2DTSLOTSIZE;


 fsi = rp->header.stblindex + stblsize;
 rp->header.freelist = fsi;
 rp->header.freecnt = rp->header.maxslot - fsi;
 if (nextbn == 0 && split->index == sp->header.nextindex) {

  rlv = & rdtlck->lv[rdtlck->index];
  rlv->offset = 0;
  rlv->length = 2;
  rdtlck->index++;




  f = &rp->slot[fsi];
  for (fsi++; fsi < rp->header.maxslot; f++, fsi++)
   f->next = fsi;
  f->next = -1;


  dtInsertEntry(rp, 0, split->key, split->data, &rdtlck);

  goto out;
 }
 if (nextbn != 0) {
  DT_GETPAGE(ip, nextbn, mp, PSIZE, p, rc);
  if (rc) {
   discard_metapage(rmp);
   return rc;
  }

  BT_MARK_DIRTY(mp, ip);



  tlck = txLock(tid, ip, mp, tlckDTREE | tlckRELINK);
  jfs_info("dtSplitPage: tlck = 0x%p, ip = 0x%p, mp=0x%p",
   tlck, ip, mp);
  dtlck = (struct dt_lock *) & tlck->lock;


  lv = & dtlck->lv[dtlck->index];
  lv->offset = 0;
  lv->length = 1;
  dtlck->index++;

  p->header.prev = cpu_to_le64(rbn);

  DT_PUTPAGE(mp);
 }




 skip = split->index;
 half = (PSIZE >> L2DTSLOTSIZE) >> 1;
 left = 0;







 stbl = (u8 *) & sp->slot[sp->header.stblindex];
 nextindex = sp->header.nextindex;
 for (nxt = off = 0; nxt < nextindex; ++off) {
  if (off == skip)

   n = split->nslot;
  else {
   si = stbl[nxt];
   switch (sp->header.flag & BT_TYPE) {
   case 128:
    ldtentry = (struct ldtentry *) & sp->slot[si];
    if (DO_INDEX(ip))
     n = NDTLEAF(ldtentry->namlen);
    else
     n = NDTLEAF_LEGACY(ldtentry->
          namlen);
    break;

   case 129:
    idtentry = (struct idtentry *) & sp->slot[si];
    n = NDTINTERNAL(idtentry->namlen);
    break;

   default:
    break;
   }

   ++nxt;
  }

  left += n;
  if (left >= half)
   break;
 }
 rlv = & rdtlck->lv[rdtlck->index];
 rlv->offset = 0;
 rlv->length = 5;
 rdtlck->index++;

 dtMoveEntry(sp, nxt, rp, &sdtlck, &rdtlck, DO_INDEX(ip));

 sp->header.nextindex = nxt;




 fsi = rp->header.freelist;
 f = &rp->slot[fsi];
 for (fsi++; fsi < rp->header.maxslot; f++, fsi++)
  f->next = fsi;
 f->next = -1;




 if ((rp->header.flag & 128) && DO_INDEX(ip)) {
  s64 lblock;

  mp = ((void*)0);
  stbl = DT_GETSTBL(rp);
  for (n = 0; n < rp->header.nextindex; n++) {
   ldtentry = (struct ldtentry *) & rp->slot[stbl[n]];
   modify_index(tid, ip, le32_to_cpu(ldtentry->index),
         rbn, n, &mp, &lblock);
  }
  if (mp)
   release_metapage(mp);
 }




 if (skip <= off) {

  dtInsertEntry(sp, skip, split->key, split->data, &sdtlck);


  if (sdtlck->index >= sdtlck->maxcnt)
   sdtlck = (struct dt_lock *) txLinelock(sdtlck);
  slv = & sdtlck->lv[sdtlck->index];
  n = skip >> L2DTSLOTSIZE;
  slv->offset = sp->header.stblindex + n;
  slv->length =
      ((sp->header.nextindex - 1) >> L2DTSLOTSIZE) - n + 1;
  sdtlck->index++;
 }



 else {

  skip -= nxt;


  dtInsertEntry(rp, skip, split->key, split->data, &rdtlck);
 }

      out:
 *rmpp = rmp;
 *rpxdp = *pxd;

 return rc;
}
