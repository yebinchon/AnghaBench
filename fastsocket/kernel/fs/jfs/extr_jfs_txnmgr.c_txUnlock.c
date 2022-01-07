
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlock {int type; int flag; int lock; struct metapage* mp; scalar_t__ next; } ;
struct tblock {int synclist; scalar_t__ lsn; scalar_t__ last; scalar_t__ next; scalar_t__ clsn; int sb; } ;
struct metapage {int xflag; scalar_t__ nohomeok; scalar_t__ clsn; } ;
struct linelock {scalar_t__ next; } ;
struct jfs_log {int count; } ;
typedef scalar_t__ lid_t ;
struct TYPE_2__ {struct jfs_log* log; } ;


 int COMMIT_PAGE ;
 TYPE_1__* JFS_SBI (int ) ;
 int LOGSYNC_LOCK (struct jfs_log*,unsigned long) ;
 int LOGSYNC_UNLOCK (struct jfs_log*,unsigned long) ;
 int TXN_LOCK () ;
 int TXN_UNLOCK () ;
 int _metapage_homeok (struct metapage*) ;
 int assert (int) ;
 int hold_metapage (struct metapage*) ;
 int jfs_info (char*,struct tblock*,...) ;
 struct tlock* lid_to_tlock (scalar_t__) ;
 int list_del (int *) ;
 int logdiff (int,scalar_t__,struct jfs_log*) ;
 int put_metapage (struct metapage*) ;
 int tlckBTROOT ;
 int tlckFREEPAGE ;
 int txLockFree (scalar_t__) ;

__attribute__((used)) static void txUnlock(struct tblock * tblk)
{
 struct tlock *tlck;
 struct linelock *linelock;
 lid_t lid, next, llid, k;
 struct metapage *mp;
 struct jfs_log *log;
 int difft, diffp;
 unsigned long flags;

 jfs_info("txUnlock: tblk = 0x%p", tblk);
 log = JFS_SBI(tblk->sb)->log;




 for (lid = tblk->next; lid; lid = next) {
  tlck = lid_to_tlock(lid);
  next = tlck->next;

  jfs_info("unlocking lid = %d, tlck = 0x%p", lid, tlck);


  if ((mp = tlck->mp) != ((void*)0) &&
      (tlck->type & tlckBTROOT) == 0) {
   assert(mp->xflag & COMMIT_PAGE);



   hold_metapage(mp);

   assert(mp->nohomeok > 0);
   _metapage_homeok(mp);


   LOGSYNC_LOCK(log, flags);
   if (mp->clsn) {
    logdiff(difft, tblk->clsn, log);
    logdiff(diffp, mp->clsn, log);
    if (difft > diffp)
     mp->clsn = tblk->clsn;
   } else
    mp->clsn = tblk->clsn;
   LOGSYNC_UNLOCK(log, flags);

   assert(!(tlck->flag & tlckFREEPAGE));

   put_metapage(mp);
  }




  TXN_LOCK();

  llid = ((struct linelock *) & tlck->lock)->next;
  while (llid) {
   linelock = (struct linelock *) lid_to_tlock(llid);
   k = linelock->next;
   txLockFree(llid);
   llid = k;
  }
  txLockFree(lid);

  TXN_UNLOCK();
 }
 tblk->next = tblk->last = 0;






 if (tblk->lsn) {
  LOGSYNC_LOCK(log, flags);
  log->count--;
  list_del(&tblk->synclist);
  LOGSYNC_UNLOCK(log, flags);
 }
}
