
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tblock {int flag; int xflag; int gcwait; } ;
struct jfs_log {int cflag; int gcrtc; int flag; int cqueue; } ;


 int COMMIT_LAZY ;
 int EIO ;
 int LOGGC_LOCK (struct jfs_log*) ;
 int LOGGC_UNLOCK (struct jfs_log*) ;
 int __SLEEP_COND (int ,int,int ,int ) ;
 int jfs_info (char*,struct tblock*,int ) ;
 scalar_t__ jfs_tlocks_low ;
 int list_empty (int *) ;
 int lmGCwrite (struct jfs_log*,int ) ;
 int logGC_PAGEOUT ;
 int log_FLUSH ;
 int tblkGC_COMMITTED ;
 int tblkGC_ERROR ;
 int tblkGC_LAZY ;
 int tblkGC_READY ;
 scalar_t__ test_bit (int ,int *) ;

int lmGroupCommit(struct jfs_log * log, struct tblock * tblk)
{
 int rc = 0;

 LOGGC_LOCK(log);


 if (tblk->flag & tblkGC_COMMITTED) {
  if (tblk->flag & tblkGC_ERROR)
   rc = -EIO;

  LOGGC_UNLOCK(log);
  return rc;
 }
 jfs_info("lmGroup Commit: tblk = 0x%p, gcrtc = %d", tblk, log->gcrtc);

 if (tblk->xflag & COMMIT_LAZY)
  tblk->flag |= tblkGC_LAZY;

 if ((!(log->cflag & logGC_PAGEOUT)) && (!list_empty(&log->cqueue)) &&
     (!(tblk->xflag & COMMIT_LAZY) || test_bit(log_FLUSH, &log->flag)
      || jfs_tlocks_low)) {





  log->cflag |= logGC_PAGEOUT;

  lmGCwrite(log, 0);
 }

 if (tblk->xflag & COMMIT_LAZY) {



  LOGGC_UNLOCK(log);
  return 0;
 }



 if (tblk->flag & tblkGC_COMMITTED) {
  if (tblk->flag & tblkGC_ERROR)
   rc = -EIO;

  LOGGC_UNLOCK(log);
  return rc;
 }



 log->gcrtc++;
 tblk->flag |= tblkGC_READY;

 __SLEEP_COND(tblk->gcwait, (tblk->flag & tblkGC_COMMITTED),
       LOGGC_LOCK(log), LOGGC_UNLOCK(log));


 if (tblk->flag & tblkGC_ERROR)
  rc = -EIO;

 LOGGC_UNLOCK(log);
 return rc;
}
