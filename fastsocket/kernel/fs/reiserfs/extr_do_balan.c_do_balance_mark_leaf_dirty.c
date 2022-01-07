
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_balance {TYPE_1__* transaction_handle; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int t_super; } ;


 int journal_mark_dirty (TYPE_1__*,int ,struct buffer_head*) ;

inline void do_balance_mark_leaf_dirty(struct tree_balance *tb,
           struct buffer_head *bh, int flag)
{
 journal_mark_dirty(tb->transaction_handle,
      tb->transaction_handle->t_super, bh);
}
