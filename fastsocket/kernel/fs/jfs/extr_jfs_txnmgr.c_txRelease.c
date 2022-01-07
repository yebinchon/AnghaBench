
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlock {int type; struct metapage* mp; scalar_t__ next; } ;
struct tblock {int waitor; scalar_t__ next; } ;
struct metapage {int xflag; scalar_t__ lid; } ;
typedef scalar_t__ lid_t ;


 int COMMIT_PAGE ;
 int TXN_LOCK () ;
 int TXN_UNLOCK () ;
 int TXN_WAKEUP (int *) ;
 int assert (int) ;
 struct tlock* lid_to_tlock (scalar_t__) ;
 int tlckBTROOT ;

__attribute__((used)) static void txRelease(struct tblock * tblk)
{
 struct metapage *mp;
 lid_t lid;
 struct tlock *tlck;

 TXN_LOCK();

 for (lid = tblk->next; lid; lid = tlck->next) {
  tlck = lid_to_tlock(lid);
  if ((mp = tlck->mp) != ((void*)0) &&
      (tlck->type & tlckBTROOT) == 0) {
   assert(mp->xflag & COMMIT_PAGE);
   mp->lid = 0;
  }
 }





 TXN_WAKEUP(&tblk->waitor);

 TXN_UNLOCK();
}
