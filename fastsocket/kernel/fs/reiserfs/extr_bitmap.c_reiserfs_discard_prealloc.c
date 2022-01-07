
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_transaction_handle {int t_trans_id; } ;
struct reiserfs_inode_info {scalar_t__ i_prealloc_count; } ;
struct inode {int dummy; } ;


 int BUG_ON (int) ;
 struct reiserfs_inode_info* REISERFS_I (struct inode*) ;
 int __discard_prealloc (struct reiserfs_transaction_handle*,struct reiserfs_inode_info*) ;

void reiserfs_discard_prealloc(struct reiserfs_transaction_handle *th,
          struct inode *inode)
{
 struct reiserfs_inode_info *ei = REISERFS_I(inode);
 BUG_ON(!th->t_trans_id);
 if (ei->i_prealloc_count)
  __discard_prealloc(th, ei);
}
