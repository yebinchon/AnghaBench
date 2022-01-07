
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int t_super; int t_trans_id; } ;
struct inode {int dummy; } ;
typedef int b_blocknr_t ;


 int BUG_ON (int) ;
 int RFALSE (int,char*) ;
 int _reiserfs_free_block (struct reiserfs_transaction_handle*,struct inode*,int ,int) ;
 int is_reusable (int ,int ,int) ;

__attribute__((used)) static void reiserfs_free_prealloc_block(struct reiserfs_transaction_handle *th,
      struct inode *inode, b_blocknr_t block)
{
 BUG_ON(!th->t_trans_id);
 RFALSE(!th->t_super,
        "vs-4060: trying to free block on nonexistent device");
 if (!is_reusable(th->t_super, block, 1))
  return;
 _reiserfs_free_block(th, inode, block, 1);
}
