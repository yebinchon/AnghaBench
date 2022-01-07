
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* j_wbuf; scalar_t__ j_revoke; scalar_t__ j_inode; scalar_t__ j_sb_buffer; scalar_t__ j_transaction_sequence; scalar_t__ j_tail_sequence; scalar_t__ j_tail; int j_list_lock; int * j_checkpoint_transactions; int * j_committing_transaction; int * j_running_transaction; } ;
typedef TYPE_1__ journal_t ;


 int EIO ;
 int J_ASSERT (int ) ;
 int brelse (scalar_t__) ;
 int iput (scalar_t__) ;
 int is_journal_aborted (TYPE_1__*) ;
 int journal_commit_transaction (TYPE_1__*) ;
 int journal_destroy_revoke (TYPE_1__*) ;
 int journal_kill_thread (TYPE_1__*) ;
 int journal_update_superblock (TYPE_1__*,int) ;
 int kfree (TYPE_1__*) ;
 int log_do_checkpoint (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int journal_destroy(journal_t *journal)
{
 int err = 0;


 journal_kill_thread(journal);


 if (journal->j_running_transaction)
  journal_commit_transaction(journal);




 spin_lock(&journal->j_list_lock);
 while (journal->j_checkpoint_transactions != ((void*)0)) {
  spin_unlock(&journal->j_list_lock);
  log_do_checkpoint(journal);
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
   journal_update_superblock(journal, 1);
  } else {
   err = -EIO;
  }
  brelse(journal->j_sb_buffer);
 }

 if (journal->j_inode)
  iput(journal->j_inode);
 if (journal->j_revoke)
  journal_destroy_revoke(journal);
 kfree(journal->j_wbuf);
 kfree(journal);

 return err;
}
