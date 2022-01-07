
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {unsigned int s_blocksize; unsigned int s_blocksize_bits; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_inode_info {int i_state; } ;
struct inode {unsigned int i_size; int i_ctime; int i_mtime; int i_mapping; struct super_block* i_sb; } ;


 int CURRENT_TIME ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_I_BMAP ;
 int NILFS_SB (struct super_block*) ;
 int NILFS_TI_SYNC ;
 int block_truncate_page (int ,unsigned int,int ) ;
 int nilfs_get_block ;
 int nilfs_set_file_dirty (int ,struct inode*,int ) ;
 int nilfs_set_transaction_flag (int ) ;
 int nilfs_transaction_begin (struct super_block*,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_commit (struct super_block*) ;
 int nilfs_truncate_bmap (struct nilfs_inode_info*,unsigned long) ;
 int test_bit (int ,int *) ;

void nilfs_truncate(struct inode *inode)
{
 unsigned long blkoff;
 unsigned int blocksize;
 struct nilfs_transaction_info ti;
 struct super_block *sb = inode->i_sb;
 struct nilfs_inode_info *ii = NILFS_I(inode);

 if (!test_bit(NILFS_I_BMAP, &ii->i_state))
  return;
 if (IS_APPEND(inode) || IS_IMMUTABLE(inode))
  return;

 blocksize = sb->s_blocksize;
 blkoff = (inode->i_size + blocksize - 1) >> sb->s_blocksize_bits;
 nilfs_transaction_begin(sb, &ti, 0);

 block_truncate_page(inode->i_mapping, inode->i_size, nilfs_get_block);

 nilfs_truncate_bmap(ii, blkoff);

 inode->i_mtime = inode->i_ctime = CURRENT_TIME;
 if (IS_SYNC(inode))
  nilfs_set_transaction_flag(NILFS_TI_SYNC);

 nilfs_set_file_dirty(NILFS_SB(sb), inode, 0);
 nilfs_transaction_commit(sb);


}
