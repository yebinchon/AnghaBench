
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tid_t ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct ext3_inode_info {int i_sync_tid; int i_datasync_tid; } ;
struct dentry {struct inode* d_inode; } ;
typedef int journal_t ;
struct TYPE_6__ {int * s_journal; } ;
struct TYPE_5__ {int s_flags; int s_bdev; } ;


 int BARRIER ;
 struct ext3_inode_info* EXT3_I (struct inode*) ;
 TYPE_3__* EXT3_SB (TYPE_1__*) ;
 int J_ASSERT (int ) ;
 int MS_RDONLY ;
 int atomic_read (int *) ;
 int blkdev_issue_flush (int ,int *) ;
 int ext3_force_commit (TYPE_1__*) ;
 int * ext3_journal_current_handle () ;
 scalar_t__ ext3_should_journal_data (struct inode*) ;
 scalar_t__ log_start_commit (int *,int ) ;
 int log_wait_commit (int *,int ) ;
 scalar_t__ test_opt (TYPE_1__*,int ) ;
 int trace_ext3_sync_file_enter (struct file*,int) ;
 int trace_ext3_sync_file_exit (struct inode*,int) ;

int ext3_sync_file(struct file * file, struct dentry *dentry, int datasync)
{
 struct inode *inode = dentry->d_inode;
 struct ext3_inode_info *ei = EXT3_I(inode);
 journal_t *journal = EXT3_SB(inode->i_sb)->s_journal;
 int ret = 0;
 tid_t commit_tid;

 J_ASSERT(ext3_journal_current_handle() == ((void*)0));

 trace_ext3_sync_file_enter(file, datasync);

 if (inode->i_sb->s_flags & MS_RDONLY)
  return 0;
 if (ext3_should_journal_data(inode)) {
  ret = ext3_force_commit(inode->i_sb);
  goto out;
 }

 if (datasync)
  commit_tid = atomic_read(&ei->i_datasync_tid);
 else
  commit_tid = atomic_read(&ei->i_sync_tid);

 if (log_start_commit(journal, commit_tid)) {
  log_wait_commit(journal, commit_tid);
  goto out;
 }






 if (test_opt(inode->i_sb, BARRIER))
  blkdev_issue_flush(inode->i_sb->s_bdev, ((void*)0));
out:
 trace_ext3_sync_file_exit(inode, ret);
 return ret;
}
