
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_inode_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ nrpages; } ;
struct inode {TYPE_1__ i_data; struct super_block* i_sb; } ;


 scalar_t__ IS_SYNC (struct inode*) ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_TI_SYNC ;
 int clear_inode (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int nilfs_free_inode (struct inode*) ;
 int nilfs_set_transaction_flag (int ) ;
 int nilfs_transaction_begin (struct super_block*,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_commit (struct super_block*) ;
 int nilfs_truncate_bmap (struct nilfs_inode_info*,int ) ;
 int truncate_inode_pages (TYPE_1__*,int ) ;
 scalar_t__ unlikely (int ) ;

void nilfs_delete_inode(struct inode *inode)
{
 struct nilfs_transaction_info ti;
 struct super_block *sb = inode->i_sb;
 struct nilfs_inode_info *ii = NILFS_I(inode);

 if (unlikely(is_bad_inode(inode))) {
  if (inode->i_data.nrpages)
   truncate_inode_pages(&inode->i_data, 0);
  clear_inode(inode);
  return;
 }
 nilfs_transaction_begin(sb, &ti, 0);

 if (inode->i_data.nrpages)
  truncate_inode_pages(&inode->i_data, 0);

 nilfs_truncate_bmap(ii, 0);
 nilfs_free_inode(inode);

 if (IS_SYNC(inode))
  nilfs_set_transaction_flag(NILFS_TI_SYNC);
 nilfs_transaction_commit(sb);


}
