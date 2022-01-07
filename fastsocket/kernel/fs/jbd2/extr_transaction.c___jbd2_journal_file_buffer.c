
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct journal_head* t_reserved_list; struct journal_head* t_log_list; struct journal_head* t_shadow_list; struct journal_head* t_iobuf_list; struct journal_head* t_forget; struct journal_head* t_buffers; int t_nr_buffers; TYPE_1__* t_journal; } ;
typedef TYPE_2__ transaction_t ;
struct journal_head {int b_jlist; int b_frozen_data; int b_committed_data; TYPE_2__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int j_list_lock; } ;
 int BJ_Types ;
 int J_ASSERT_JH (struct journal_head*,int) ;
 int __blist_add_buffer (struct journal_head**,struct journal_head*) ;
 int __jbd2_journal_temp_unlink_buffer (struct journal_head*) ;
 int assert_spin_locked (int *) ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 int jbd_is_locked_bh_state (struct buffer_head*) ;
 struct buffer_head* jh2bh (struct journal_head*) ;
 int set_buffer_jbddirty (struct buffer_head*) ;
 scalar_t__ test_clear_buffer_dirty (struct buffer_head*) ;
 scalar_t__ test_clear_buffer_jbddirty (struct buffer_head*) ;
 int warn_dirty_buffer (struct buffer_head*) ;

void __jbd2_journal_file_buffer(struct journal_head *jh,
   transaction_t *transaction, int jlist)
{
 struct journal_head **list = ((void*)0);
 int was_dirty = 0;
 struct buffer_head *bh = jh2bh(jh);

 J_ASSERT_JH(jh, jbd_is_locked_bh_state(bh));
 assert_spin_locked(&transaction->t_journal->j_list_lock);

 J_ASSERT_JH(jh, jh->b_jlist < BJ_Types);
 J_ASSERT_JH(jh, jh->b_transaction == transaction ||
    jh->b_transaction == ((void*)0));

 if (jh->b_transaction && jh->b_jlist == jlist)
  return;

 if (jlist == 131 || jlist == 129 ||
     jlist == 128 || jlist == 134) {







  if (buffer_dirty(bh))
   warn_dirty_buffer(bh);
  if (test_clear_buffer_dirty(bh) ||
      test_clear_buffer_jbddirty(bh))
   was_dirty = 1;
 }

 if (jh->b_transaction)
  __jbd2_journal_temp_unlink_buffer(jh);
 jh->b_transaction = transaction;

 switch (jlist) {
 case 130:
  J_ASSERT_JH(jh, !jh->b_committed_data);
  J_ASSERT_JH(jh, !jh->b_frozen_data);
  return;
 case 131:
  transaction->t_nr_buffers++;
  list = &transaction->t_buffers;
  break;
 case 134:
  list = &transaction->t_forget;
  break;
 case 133:
  list = &transaction->t_iobuf_list;
  break;
 case 128:
  list = &transaction->t_shadow_list;
  break;
 case 132:
  list = &transaction->t_log_list;
  break;
 case 129:
  list = &transaction->t_reserved_list;
  break;
 }

 __blist_add_buffer(list, jh);
 jh->b_jlist = jlist;

 if (was_dirty)
  set_buffer_jbddirty(bh);
}
