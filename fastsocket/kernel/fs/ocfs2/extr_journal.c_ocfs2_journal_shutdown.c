
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {struct ocfs2_journal* journal; int * commit_task; } ;
struct ocfs2_journal {scalar_t__ j_state; int * j_bh; int * j_journal; int j_num_trans; struct inode* j_inode; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int ip_open_count; } ;


 int BUG () ;
 int BUG_ON (int) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 scalar_t__ OCFS2_JOURNAL_FREE ;
 scalar_t__ OCFS2_JOURNAL_IN_SHUTDOWN ;
 scalar_t__ OCFS2_JOURNAL_LOADED ;
 int atomic_read (int *) ;
 int brelse (int *) ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;
 int jbd2_journal_destroy (int *) ;
 int jbd2_journal_flush (int *) ;
 int jbd2_journal_lock_updates (int *) ;
 int jbd2_journal_unlock_updates (int *) ;
 int kthread_stop (int *) ;
 int mlog (int ,char*,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit_void () ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_journal_toggle_dirty (struct ocfs2_super*,int ,int ) ;
 scalar_t__ ocfs2_mount_local (struct ocfs2_super*) ;

void ocfs2_journal_shutdown(struct ocfs2_super *osb)
{
 struct ocfs2_journal *journal = ((void*)0);
 int status = 0;
 struct inode *inode = ((void*)0);
 int num_running_trans = 0;

 mlog_entry_void();

 BUG_ON(!osb);

 journal = osb->journal;
 if (!journal)
  goto done;

 inode = journal->j_inode;

 if (journal->j_state != OCFS2_JOURNAL_LOADED)
  goto done;


 if (!igrab(inode))
  BUG();

 num_running_trans = atomic_read(&(osb->journal->j_num_trans));
 if (num_running_trans > 0)
  mlog(0, "Shutting down journal: must wait on %d "
       "running transactions!\n",
       num_running_trans);





 journal->j_state = OCFS2_JOURNAL_IN_SHUTDOWN;




 if (osb->commit_task) {

  mlog(0, "Waiting for ocfs2commit to exit....\n");
  kthread_stop(osb->commit_task);
  osb->commit_task = ((void*)0);
 }

 BUG_ON(atomic_read(&(osb->journal->j_num_trans)) != 0);

 if (ocfs2_mount_local(osb)) {
  jbd2_journal_lock_updates(journal->j_journal);
  status = jbd2_journal_flush(journal->j_journal);
  jbd2_journal_unlock_updates(journal->j_journal);
  if (status < 0)
   mlog_errno(status);
 }

 if (status == 0) {




  status = ocfs2_journal_toggle_dirty(osb, 0, 0);
  if (status < 0)
   mlog_errno(status);
 }


 jbd2_journal_destroy(journal->j_journal);
 journal->j_journal = ((void*)0);

 OCFS2_I(inode)->ip_open_count--;


 ocfs2_inode_unlock(inode, 1);

 brelse(journal->j_bh);
 journal->j_bh = ((void*)0);

 journal->j_state = OCFS2_JOURNAL_FREE;


done:
 if (inode)
  iput(inode);
 mlog_exit_void();
}
