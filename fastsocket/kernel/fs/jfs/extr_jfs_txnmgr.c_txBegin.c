
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct tblock {scalar_t__ next; int last; int xflag; int flag; int lsn; scalar_t__ logtid; struct super_block* sb; } ;
struct super_block {int dummy; } ;
struct jfs_log {int active; scalar_t__ logtid; int syncwait; int flag; } ;
struct TYPE_8__ {struct jfs_log* log; } ;
struct TYPE_7__ {scalar_t__ tlocksInUse; int freetid; int freewait; int lowlockwait; } ;
struct TYPE_6__ {int txBegin_freetid; int txBegin_lockslow; int txBegin_barrier; int txBegin; } ;
struct TYPE_5__ {int ntid; int maxtid; } ;


 int COMMIT_FORCE ;
 int HIGHWATERMARK (int ,int) ;
 int INCREMENT (int ) ;
 TYPE_4__* JFS_SBI (struct super_block*) ;
 int TXN_LOCK () ;
 int TXN_SLEEP (int *) ;
 int TXN_UNLOCK () ;
 TYPE_3__ TxAnchor ;
 scalar_t__ TxLockVHWM ;
 TYPE_2__ TxStat ;
 int jfs_info (char*,...) ;
 int log_QUIESCE ;
 int log_SYNCBARRIER ;
 TYPE_1__ stattx ;
 scalar_t__ test_bit (int ,int *) ;
 struct tblock* tid_to_tblock (int) ;

tid_t txBegin(struct super_block *sb, int flag)
{
 tid_t t;
 struct tblock *tblk;
 struct jfs_log *log;

 jfs_info("txBegin: flag = 0x%x", flag);
 log = JFS_SBI(sb)->log;

 TXN_LOCK();

 INCREMENT(TxStat.txBegin);

      retry:
 if (!(flag & COMMIT_FORCE)) {



  if (test_bit(log_SYNCBARRIER, &log->flag) ||
      test_bit(log_QUIESCE, &log->flag)) {
   INCREMENT(TxStat.txBegin_barrier);
   TXN_SLEEP(&log->syncwait);
   goto retry;
  }
 }
 if (flag == 0) {





  if (TxAnchor.tlocksInUse > TxLockVHWM) {
   INCREMENT(TxStat.txBegin_lockslow);
   TXN_SLEEP(&TxAnchor.lowlockwait);
   goto retry;
  }
 }




 if ((t = TxAnchor.freetid) == 0) {
  jfs_info("txBegin: waiting for free tid");
  INCREMENT(TxStat.txBegin_freetid);
  TXN_SLEEP(&TxAnchor.freewait);
  goto retry;
 }

 tblk = tid_to_tblock(t);

 if ((tblk->next == 0) && !(flag & COMMIT_FORCE)) {

  jfs_info("txBegin: waiting for free tid");
  INCREMENT(TxStat.txBegin_freetid);
  TXN_SLEEP(&TxAnchor.freewait);
  goto retry;
 }

 TxAnchor.freetid = tblk->next;
 tblk->next = tblk->last = tblk->xflag = tblk->flag = tblk->lsn = 0;

 tblk->sb = sb;
 ++log->logtid;
 tblk->logtid = log->logtid;

 ++log->active;

 HIGHWATERMARK(stattx.maxtid, t);
 INCREMENT(stattx.ntid);

 TXN_UNLOCK();

 jfs_info("txBegin: returning tid = %d", t);

 return t;
}
