
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int dummy; } ;


 int do_journal_release (struct reiserfs_transaction_handle*,struct super_block*,int ) ;

int journal_release(struct reiserfs_transaction_handle *th,
      struct super_block *sb)
{
 return do_journal_release(th, sb, 0);
}
