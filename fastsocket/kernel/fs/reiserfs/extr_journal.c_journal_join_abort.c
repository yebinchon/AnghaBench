
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_refcount; struct reiserfs_transaction_handle* t_handle_save; } ;
struct TYPE_2__ {struct reiserfs_transaction_handle* journal_info; } ;


 int BUG_ON (int ) ;
 int JBEGIN_ABORT ;
 TYPE_1__* current ;
 int do_journal_begin_r (struct reiserfs_transaction_handle*,struct super_block*,unsigned long,int ) ;

int journal_join_abort(struct reiserfs_transaction_handle *th,
         struct super_block *sb, unsigned long nblocks)
{
 struct reiserfs_transaction_handle *cur_th = current->journal_info;




 th->t_handle_save = cur_th;
 BUG_ON(cur_th && cur_th->t_refcount > 1);
 return do_journal_begin_r(th, sb, nblocks, JBEGIN_ABORT);
}
