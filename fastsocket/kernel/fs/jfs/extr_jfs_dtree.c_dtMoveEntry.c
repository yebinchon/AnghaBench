
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lv {int offset; int length; } ;
struct ldtentry {int namlen; int next; int index; } ;
struct idtentry {int namlen; int next; int index; } ;
struct dtslot {int next; int cnt; int name; } ;
struct dt_lock {size_t index; size_t maxcnt; struct lv* lv; } ;
typedef int s8 ;
struct TYPE_5__ {size_t stblindex; int freelist; int nextindex; int flag; int freecnt; } ;
struct TYPE_6__ {TYPE_1__ header; struct dtslot* slot; } ;
typedef TYPE_2__ dtpage_t ;


 int BT_LEAF ;
 int DTIHDRDATALEN ;
 int DTLHDRDATALEN ;
 int DTLHDRDATALEN_LEGACY ;
 int DTSLOTDATALEN ;
 int UniStrncpy_le (int ,int ,int) ;
 int memcpy (struct ldtentry*,struct ldtentry*,int) ;
 int min (int,int ) ;
 scalar_t__ txLinelock (struct dt_lock*) ;

__attribute__((used)) static void dtMoveEntry(dtpage_t * sp, int si, dtpage_t * dp,
   struct dt_lock ** sdtlock, struct dt_lock ** ddtlock,
   int do_index)
{
 int ssi, next;
 int di;
 int dsi;
 s8 *sstbl, *dstbl;
 int snamlen, len;
 struct ldtentry *slh, *dlh = ((void*)0);
 struct idtentry *sih, *dih = ((void*)0);
 struct dtslot *h, *s, *d;
 struct dt_lock *sdtlck = *sdtlock, *ddtlck = *ddtlock;
 struct lv *slv, *dlv;
 int xssi, ns, nd;
 int sfsi;

 sstbl = (s8 *) & sp->slot[sp->header.stblindex];
 dstbl = (s8 *) & dp->slot[dp->header.stblindex];

 dsi = dp->header.freelist;
 sfsi = sp->header.freelist;


 dlv = & ddtlck->lv[ddtlck->index];
 dlv->offset = dsi;


 slv = & sdtlck->lv[sdtlck->index];
 slv->offset = sstbl[si];
 xssi = slv->offset - 1;




 ns = nd = 0;
 for (di = 0; si < sp->header.nextindex; si++, di++) {
  ssi = sstbl[si];
  dstbl[di] = dsi;


  if (ssi != xssi + 1) {

   slv->length = ns;
   sdtlck->index++;


   if (sdtlck->index < sdtlck->maxcnt)
    slv++;
   else {
    sdtlck = (struct dt_lock *) txLinelock(sdtlck);
    slv = & sdtlck->lv[0];
   }

   slv->offset = ssi;
   ns = 0;
  }





  h = d = &dp->slot[dsi];


  s = &sp->slot[ssi];
  if (sp->header.flag & BT_LEAF) {

   slh = (struct ldtentry *) s;
   dlh = (struct ldtentry *) h;
   snamlen = slh->namlen;

   if (do_index) {
    len = min(snamlen, DTLHDRDATALEN);
    dlh->index = slh->index;
   } else
    len = min(snamlen, DTLHDRDATALEN_LEGACY);

   memcpy(dlh, slh, 6 + len * 2);

   next = slh->next;


   dsi++;
   dlh->next = dsi;
  } else {
   sih = (struct idtentry *) s;
   snamlen = sih->namlen;

   len = min(snamlen, DTIHDRDATALEN);
   dih = (struct idtentry *) h;
   memcpy(dih, sih, 10 + len * 2);
   next = sih->next;

   dsi++;
   dih->next = dsi;
  }


  s->next = sfsi;
  s->cnt = 1;
  sfsi = ssi;

  ns++;
  nd++;
  xssi = ssi;




  snamlen -= len;
  while ((ssi = next) >= 0) {

   if (ssi != xssi + 1) {

    slv->length = ns;
    sdtlck->index++;


    if (sdtlck->index < sdtlck->maxcnt)
     slv++;
    else {
     sdtlck =
         (struct dt_lock *)
         txLinelock(sdtlck);
     slv = & sdtlck->lv[0];
    }

    slv->offset = ssi;
    ns = 0;
   }


   s = &sp->slot[ssi];


   d++;

   len = min(snamlen, DTSLOTDATALEN);
   UniStrncpy_le(d->name, s->name, len);

   ns++;
   nd++;
   xssi = ssi;

   dsi++;
   d->next = dsi;


   next = s->next;
   s->next = sfsi;
   s->cnt = 1;
   sfsi = ssi;

   snamlen -= len;
  }


  if (h == d) {

   if (dp->header.flag & BT_LEAF)
    dlh->next = -1;
   else
    dih->next = -1;
  } else

   d->next = -1;
 }


 slv->length = ns;
 sdtlck->index++;
 *sdtlock = sdtlck;

 dlv->length = nd;
 ddtlck->index++;
 *ddtlock = ddtlck;


 sp->header.freelist = sfsi;
 sp->header.freecnt += nd;


 dp->header.nextindex = di;

 dp->header.freelist = dsi;
 dp->header.freecnt -= nd;
}
