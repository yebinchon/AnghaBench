
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct reiserfs_transaction_handle {struct super_block* t_super; int t_trans_id; } ;
struct inode {int dummy; } ;
typedef scalar_t__ b_blocknr_t ;
struct TYPE_2__ {int s_rs; } ;


 int BUG_ON (int) ;
 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int RFALSE (int,char*) ;
 int _reiserfs_free_block (struct reiserfs_transaction_handle*,struct inode*,scalar_t__,int) ;
 int is_reusable (struct super_block*,scalar_t__,int) ;
 int journal_mark_freed (struct reiserfs_transaction_handle*,struct super_block*,scalar_t__) ;
 int reiserfs_error (struct super_block*,char*,char*,scalar_t__,scalar_t__) ;
 scalar_t__ sb_block_count (int ) ;

void reiserfs_free_block(struct reiserfs_transaction_handle *th,
    struct inode *inode, b_blocknr_t block,
    int for_unformatted)
{
 struct super_block *s = th->t_super;
 BUG_ON(!th->t_trans_id);

 RFALSE(!s, "vs-4061: trying to free block on nonexistent device");
 if (!is_reusable(s, block, 1))
  return;

 if (block > sb_block_count(REISERFS_SB(s)->s_rs)) {
  reiserfs_error(th->t_super, "bitmap-4072",
          "Trying to free block outside file system "
          "boundaries (%lu > %lu)",
          block, sb_block_count(REISERFS_SB(s)->s_rs));
  return;
 }

 journal_mark_freed(th, s, block);
 _reiserfs_free_block(th, inode, block, for_unformatted);
}
