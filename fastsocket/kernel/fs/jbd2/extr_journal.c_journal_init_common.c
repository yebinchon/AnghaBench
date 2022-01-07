
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int j_commit_interval; int j_max_batch_time; int j_history_lock; int j_flags; scalar_t__ j_min_batch_time; int j_state_lock; int j_list_lock; int j_revoke_lock; int j_checkpoint_mutex; int j_barrier; int j_wait_updates; int j_wait_commit; int j_wait_checkpoint; int j_wait_done_commit; int j_wait_logspace; int j_wait_transaction_locked; } ;
typedef TYPE_1__ journal_t ;


 int GFP_KERNEL ;
 int HZ ;
 int JBD2_ABORT ;
 int JBD2_DEFAULT_MAX_COMMIT_AGE ;
 int JOURNAL_REVOKE_DEFAULT_HASH ;
 int init_waitqueue_head (int *) ;
 int jbd2_journal_init_revoke (TYPE_1__*,int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static journal_t * journal_init_common (void)
{
 journal_t *journal;
 int err;

 journal = kzalloc(sizeof(*journal), GFP_KERNEL);
 if (!journal)
  goto fail;

 init_waitqueue_head(&journal->j_wait_transaction_locked);
 init_waitqueue_head(&journal->j_wait_logspace);
 init_waitqueue_head(&journal->j_wait_done_commit);
 init_waitqueue_head(&journal->j_wait_checkpoint);
 init_waitqueue_head(&journal->j_wait_commit);
 init_waitqueue_head(&journal->j_wait_updates);
 mutex_init(&journal->j_barrier);
 mutex_init(&journal->j_checkpoint_mutex);
 spin_lock_init(&journal->j_revoke_lock);
 spin_lock_init(&journal->j_list_lock);
 spin_lock_init(&journal->j_state_lock);

 journal->j_commit_interval = (HZ * JBD2_DEFAULT_MAX_COMMIT_AGE);
 journal->j_min_batch_time = 0;
 journal->j_max_batch_time = 15000;


 journal->j_flags = JBD2_ABORT;


 err = jbd2_journal_init_revoke(journal, JOURNAL_REVOKE_DEFAULT_HASH);
 if (err) {
  kfree(journal);
  goto fail;
 }

 spin_lock_init(&journal->j_history_lock);

 return journal;
fail:
 return ((void*)0);
}
