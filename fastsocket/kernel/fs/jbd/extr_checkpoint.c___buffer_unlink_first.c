
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct journal_head* t_checkpoint_list; } ;
typedef TYPE_2__ transaction_t ;
struct journal_head {struct journal_head* b_cpnext; TYPE_1__* b_cpprev; TYPE_2__* b_cp_transaction; } ;
struct TYPE_3__ {struct journal_head* b_cpnext; } ;



__attribute__((used)) static inline void __buffer_unlink_first(struct journal_head *jh)
{
 transaction_t *transaction = jh->b_cp_transaction;

 jh->b_cpnext->b_cpprev = jh->b_cpprev;
 jh->b_cpprev->b_cpnext = jh->b_cpnext;
 if (transaction->t_checkpoint_list == jh) {
  transaction->t_checkpoint_list = jh->b_cpnext;
  if (transaction->t_checkpoint_list == jh)
   transaction->t_checkpoint_list = ((void*)0);
 }
}
