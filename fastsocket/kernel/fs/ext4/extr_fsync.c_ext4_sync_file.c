
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tid_t ;
struct inode {TYPE_4__* i_sb; } ;
struct file {int dummy; } ;
struct ext4_inode_info {int i_sync_tid; int i_datasync_tid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_7__ {int j_flags; } ;
typedef TYPE_1__ journal_t ;
struct TYPE_9__ {TYPE_1__* s_journal; } ;
struct TYPE_8__ {int s_flags; int s_bdev; } ;


 struct ext4_inode_info* EXT4_I (struct inode*) ;
 TYPE_5__* EXT4_SB (TYPE_4__*) ;
 int JBD2_BARRIER ;
 int J_ASSERT (int ) ;
 int MS_RDONLY ;
 int blkdev_issue_flush (int ,int *) ;
 int ext4_force_commit (TYPE_4__*) ;
 int * ext4_journal_current_handle () ;
 scalar_t__ ext4_should_journal_data (struct inode*) ;
 int flush_aio_dio_completed_IO (struct inode*) ;
 int jbd2_complete_transaction (TYPE_1__*,int ) ;
 int jbd2_trans_will_send_data_barrier (TYPE_1__*,int ) ;
 int simple_fsync (struct file*,struct dentry*,int) ;
 int trace_ext4_sync_file (struct file*,struct dentry*,int) ;

int ext4_sync_file(struct file *file, struct dentry *dentry, int datasync)
{
 struct inode *inode = dentry->d_inode;
 struct ext4_inode_info *ei = EXT4_I(inode);
 journal_t *journal = EXT4_SB(inode->i_sb)->s_journal;
 int ret;
 tid_t commit_tid;
 bool needs_barrier = 0;

 J_ASSERT(ext4_journal_current_handle() == ((void*)0));

 trace_ext4_sync_file(file, dentry, datasync);

 if (inode->i_sb->s_flags & MS_RDONLY)
  return 0;

 ret = flush_aio_dio_completed_IO(inode);
 if (ret < 0)
  return ret;

 if (!journal)
  return simple_fsync(file, dentry, datasync);
 if (ext4_should_journal_data(inode))
  return ext4_force_commit(inode->i_sb);

 commit_tid = datasync ? ei->i_datasync_tid : ei->i_sync_tid;
 if (journal->j_flags & JBD2_BARRIER &&
     !jbd2_trans_will_send_data_barrier(journal, commit_tid))
  needs_barrier = 1;
 ret = jbd2_complete_transaction(journal, commit_tid);
 if (needs_barrier)
  blkdev_issue_flush(inode->i_sb->s_bdev, ((void*)0));
 return ret;
}
