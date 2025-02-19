
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {int t_blocks_allocated; int t_refcount; int t_trans_id; struct super_block* t_super; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 int JOURNAL_PER_BALANCE_CNT ;
 int journal_begin (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int journal_end (struct reiserfs_transaction_handle*,struct super_block*,int) ;
 int pathrelse (struct treepath*) ;
 int reiserfs_update_inode_transaction (struct inode*) ;
 int reiserfs_update_sd (struct reiserfs_transaction_handle*,struct inode*) ;

__attribute__((used)) static int restart_transaction(struct reiserfs_transaction_handle *th,
          struct inode *inode, struct treepath *path)
{
 struct super_block *s = th->t_super;
 int len = th->t_blocks_allocated;
 int err;

 BUG_ON(!th->t_trans_id);
 BUG_ON(!th->t_refcount);

 pathrelse(path);


 if (th->t_refcount > 1) {
  return 0;
 }
 reiserfs_update_sd(th, inode);
 err = journal_end(th, s, len);
 if (!err) {
  err = journal_begin(th, s, JOURNAL_PER_BALANCE_CNT * 6);
  if (!err)
   reiserfs_update_inode_transaction(inode);
 }
 return err;
}
