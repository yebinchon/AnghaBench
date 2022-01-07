
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tlock {scalar_t__ next; int flag; struct metapage* mp; int lock; } ;
struct TYPE_3__ {struct inode* ip; int ixpxd; } ;
struct tblock {int xflag; scalar_t__ next; int flag; TYPE_1__ u; int ino; int sb; } ;
struct pxd_lock {int index; int pxd; int flag; } ;
struct metapage {int xflag; scalar_t__ lid; int nohomeok; } ;
struct maplock {int index; int flag; } ;
struct inode {int i_ino; } ;
typedef scalar_t__ lid_t ;
struct TYPE_4__ {struct inode* ipimap; } ;


 int ASSERT (int) ;
 int COMMIT_CREATE ;
 int COMMIT_DELETE ;
 int COMMIT_PAGE ;
 int COMMIT_PMAP ;
 int COMMIT_PWMAP ;
 TYPE_2__* JFS_SBI (int ) ;
 int assert (int) ;
 int diUpdatePMap (struct inode*,int ,int,struct tblock*) ;
 int discard_metapage (struct metapage*) ;
 int grab_metapage (struct metapage*) ;
 int iput (struct inode*) ;
 struct tlock* lid_to_tlock (scalar_t__) ;
 int metapage_homeok (struct metapage*) ;
 int mlckALLOC ;
 int mlckALLOCPXD ;
 int tblkGC_LAZY ;
 int tlckDIRECTORY ;
 int tlckFREEPAGE ;
 int tlckUPDATEMAP ;
 int txAllocPMap (struct inode*,struct maplock*,struct tblock*) ;
 int txFreeMap (struct inode*,struct maplock*,struct tblock*,int) ;

__attribute__((used)) static void txUpdateMap(struct tblock * tblk)
{
 struct inode *ip;
 struct inode *ipimap;
 lid_t lid;
 struct tlock *tlck;
 struct maplock *maplock;
 struct pxd_lock pxdlock;
 int maptype;
 int k, nlock;
 struct metapage *mp = ((void*)0);

 ipimap = JFS_SBI(tblk->sb)->ipimap;

 maptype = (tblk->xflag & COMMIT_PMAP) ? COMMIT_PMAP : COMMIT_PWMAP;
 for (lid = tblk->next; lid; lid = tlck->next) {
  tlck = lid_to_tlock(lid);

  if ((tlck->flag & tlckUPDATEMAP) == 0)
   continue;

  if (tlck->flag & tlckFREEPAGE) {







   mp = tlck->mp;
   ASSERT(mp->xflag & COMMIT_PAGE);
   grab_metapage(mp);
  }






  maplock = (struct maplock *) & tlck->lock;
  nlock = maplock->index;

  for (k = 0; k < nlock; k++, maplock++) {





   if (maplock->flag & mlckALLOC) {
    txAllocPMap(ipimap, maplock, tblk);
   }
   else {

    if (tlck->flag & tlckDIRECTORY)
     txFreeMap(ipimap, maplock,
        tblk, COMMIT_PWMAP);
    else
     txFreeMap(ipimap, maplock,
        tblk, maptype);
   }
  }
  if (tlck->flag & tlckFREEPAGE) {
   if (!(tblk->flag & tblkGC_LAZY)) {

    ASSERT(mp->lid == lid);
    tlck->mp->lid = 0;
   }
   assert(mp->nohomeok == 1);
   metapage_homeok(mp);
   discard_metapage(mp);
   tlck->mp = ((void*)0);
  }
 }
 if (tblk->xflag & COMMIT_CREATE) {
  diUpdatePMap(ipimap, tblk->ino, 0, tblk);



  pxdlock.flag = mlckALLOCPXD;
  pxdlock.pxd = tblk->u.ixpxd;
  pxdlock.index = 1;
  txAllocPMap(ipimap, (struct maplock *) & pxdlock, tblk);
 } else if (tblk->xflag & COMMIT_DELETE) {
  ip = tblk->u.ip;
  diUpdatePMap(ipimap, ip->i_ino, 1, tblk);
  iput(ip);
 }
}
