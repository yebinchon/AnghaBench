
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_bdev; } ;
struct jfs_sb_info {struct jfs_log* log; int log_list; } ;
struct jfs_log {struct block_device* bdev; int journal_list; scalar_t__ no_integrity; int sb_list; int flag; } ;
struct block_device {int dummy; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int LOG_LOCK (struct jfs_log*) ;
 int LOG_UNLOCK (struct jfs_log*) ;
 int bd_release (struct block_device*) ;
 int blkdev_put (struct block_device*,int) ;
 int jfs_info (char*,...) ;
 int jfs_log_mutex ;
 int kfree (struct jfs_log*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int lmLogFileSystem (struct jfs_log*,struct jfs_sb_info*,int ) ;
 int lmLogShutdown (struct jfs_log*) ;
 int log_INLINELOG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sync_blockdev (int ) ;
 scalar_t__ test_bit (int ,int *) ;

int lmLogClose(struct super_block *sb)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct jfs_log *log = sbi->log;
 struct block_device *bdev;
 int rc = 0;

 jfs_info("lmLogClose: log:0x%p", log);

 mutex_lock(&jfs_log_mutex);
 LOG_LOCK(log);
 list_del(&sbi->log_list);
 LOG_UNLOCK(log);
 sbi->log = ((void*)0);





 sync_blockdev(sb->s_bdev);

 if (test_bit(log_INLINELOG, &log->flag)) {



  rc = lmLogShutdown(log);
  kfree(log);
  goto out;
 }

 if (!log->no_integrity)
  lmLogFileSystem(log, sbi, 0);

 if (!list_empty(&log->sb_list))
  goto out;
 if (log->no_integrity)
  goto out;




 list_del(&log->journal_list);
 bdev = log->bdev;
 rc = lmLogShutdown(log);

 bd_release(bdev);
 blkdev_put(bdev, FMODE_READ|FMODE_WRITE);

 kfree(log);

      out:
 mutex_unlock(&jfs_log_mutex);
 jfs_info("lmLogClose: exit(%d)", rc);
 return rc;
}
