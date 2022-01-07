
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct journal_head* t_locked_list; struct journal_head* t_reserved_list; struct journal_head* t_log_list; struct journal_head* t_shadow_list; struct journal_head* t_iobuf_list; struct journal_head* t_forget; struct journal_head* t_buffers; int t_nr_buffers; struct journal_head* t_sync_datalist; TYPE_1__* t_journal; } ;
typedef TYPE_2__ transaction_t ;
struct journal_head {int b_jlist; TYPE_2__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int j_list_lock; } ;
 int BJ_Types ;
 int J_ASSERT_JH (struct journal_head*,int) ;
 int __blist_del_buffer (struct journal_head**,struct journal_head*) ;
 int assert_spin_locked (int *) ;
 int jbd_is_locked_bh_state (struct buffer_head*) ;
 struct buffer_head* jh2bh (struct journal_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 scalar_t__ test_clear_buffer_jbddirty (struct buffer_head*) ;

__attribute__((used)) static void __journal_temp_unlink_buffer(struct journal_head *jh)
{
 struct journal_head **list = ((void*)0);
 transaction_t *transaction;
 struct buffer_head *bh = jh2bh(jh);

 J_ASSERT_JH(jh, jbd_is_locked_bh_state(bh));
 transaction = jh->b_transaction;
 if (transaction)
  assert_spin_locked(&transaction->t_journal->j_list_lock);

 J_ASSERT_JH(jh, jh->b_jlist < BJ_Types);
 if (jh->b_jlist != 131)
  J_ASSERT_JH(jh, transaction != ((void*)0));

 switch (jh->b_jlist) {
 case 131:
  return;
 case 128:
  list = &transaction->t_sync_datalist;
  break;
 case 132:
  transaction->t_nr_buffers--;
  J_ASSERT_JH(jh, transaction->t_nr_buffers >= 0);
  list = &transaction->t_buffers;
  break;
 case 136:
  list = &transaction->t_forget;
  break;
 case 135:
  list = &transaction->t_iobuf_list;
  break;
 case 129:
  list = &transaction->t_shadow_list;
  break;
 case 133:
  list = &transaction->t_log_list;
  break;
 case 130:
  list = &transaction->t_reserved_list;
  break;
 case 134:
  list = &transaction->t_locked_list;
  break;
 }

 __blist_del_buffer(list, jh);
 jh->b_jlist = 131;
 if (test_clear_buffer_jbddirty(bh))
  mark_buffer_dirty(bh);
}
