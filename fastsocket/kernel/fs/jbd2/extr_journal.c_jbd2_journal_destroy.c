
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* j_wbuf; scalar_t__ j_revoke; scalar_t__ j_inode; scalar_t__ j_proc_entry; scalar_t__ j_sb_buffer; scalar_t__ j_transaction_sequence; scalar_t__ j_tail_sequence; scalar_t__ j_tail; int j_list_lock; int * j_checkpoint_transactions; int * j_committing_transaction; int * j_running_transaction; int j_checkpoint_mutex; } ;
typedef TYPE_1__ journal_t ;


 int EIO ;
 int J_ASSERT (int ) ;
 int brelse (scalar_t__) ;
 int iput (scalar_t__) ;
 int is_journal_aborted (TYPE_1__*) ;
 int jbd2_journal_commit_transaction (TYPE_1__*) ;
 int jbd2_journal_destroy_revoke (TYPE_1__*) ;
 int jbd2_journal_update_superblock (TYPE_1__*,int) ;
 int jbd2_log_do_checkpoint (TYPE_1__*) ;
 int jbd2_stats_proc_exit (TYPE_1__*) ;
 int journal_kill_thread (TYPE_1__*) ;
 int kfree (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int jbd2_journal_destroy(journal_t *journal)
{
 int err = 0;


 journal_kill_thread(journal);


 if (journal->j_running_transaction)
  jbd2_journal_commit_transaction(journal);




 spin_lock(&journal->j_list_lock);
 while (journal->j_checkpoint_transactions != ((void*)0)) {
  spin_unlock(&journal->j_list_lock);
  mutex_lock(&journal->j_checkpoint_mutex);
  jbd2_log_do_checkpoint(journal);
  mutex_unlock(&journal->j_checkpoint_mutex);
  spin_lock(&journal->j_list_lock);
 }

 J_ASSERT(journal->j_running_transaction == ((void*)0));
 J_ASSERT(journal->j_committing_transaction == ((void*)0));
 J_ASSERT(journal->j_checkpoint_transactions == ((void*)0));
 spin_unlock(&journal->j_list_lock);

 if (journal->j_sb_buffer) {
  if (!is_journal_aborted(journal)) {

   journal->j_tail = 0;
   journal->j_tail_sequence =
    ++journal->j_transaction_sequence;
   jbd2_journal_update_superblock(journal, 1);
  } else {
   err = -EIO;
  }
  brelse(journal->j_sb_buffer);
 }

 if (journal->j_proc_entry)
  jbd2_stats_proc_exit(journal);
 if (journal->j_inode)
  iput(journal->j_inode);
 if (journal->j_revoke)
  jbd2_journal_destroy_revoke(journal);
 kfree(journal->j_wbuf);
 kfree(journal);

 return err;
}
