
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {unsigned int s_blocksize; int s_blocksize_bits; } ;
struct inode {int i_size; struct super_block* i_sb; } ;
struct ext4_dir_entry_2 {int rec_len; scalar_t__ inode; } ;
struct TYPE_4__ {int len; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int EINVAL ;
 int ENOSPC ;
 int ERR_BAD_DX_DIR ;
 int EXT4_FEATURE_COMPAT_DIR_INDEX ;
 scalar_t__ EXT4_HAS_COMPAT_FEATURE (struct super_block*,int ) ;
 int EXT4_INODE_INDEX ;
 int add_dirent_to_buf (int *,struct dentry*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* ext4_append (int *,struct inode*,int*,int*) ;
 struct buffer_head* ext4_bread (int *,struct inode*,int,int ,int*) ;
 int ext4_clear_inode_flag (struct inode*,int ) ;
 int ext4_dx_add_entry (int *,struct dentry*,struct inode*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_rec_len_to_disk (unsigned int,unsigned int) ;
 scalar_t__ is_dx (struct inode*) ;
 int make_indexed_dir (int *,struct dentry*,struct inode*,struct buffer_head*) ;

__attribute__((used)) static int ext4_add_entry(handle_t *handle, struct dentry *dentry,
     struct inode *inode)
{
 struct inode *dir = dentry->d_parent->d_inode;
 struct buffer_head *bh;
 struct ext4_dir_entry_2 *de;
 struct super_block *sb;
 int retval;
 int dx_fallback=0;
 unsigned blocksize;
 ext4_lblk_t block, blocks;

 sb = dir->i_sb;
 blocksize = sb->s_blocksize;
 if (!dentry->d_name.len)
  return -EINVAL;
 if (is_dx(dir)) {
  retval = ext4_dx_add_entry(handle, dentry, inode);
  if (!retval || (retval != ERR_BAD_DX_DIR))
   return retval;
  ext4_clear_inode_flag(dir, EXT4_INODE_INDEX);
  dx_fallback++;
  ext4_mark_inode_dirty(handle, dir);
 }
 blocks = dir->i_size >> sb->s_blocksize_bits;
 for (block = 0; block < blocks; block++) {
  bh = ext4_bread(handle, dir, block, 0, &retval);
  if(!bh)
   return retval;
  retval = add_dirent_to_buf(handle, dentry, inode, ((void*)0), bh);
  if (retval != -ENOSPC) {
   brelse(bh);
   return retval;
  }

  if (blocks == 1 && !dx_fallback &&
      EXT4_HAS_COMPAT_FEATURE(sb, EXT4_FEATURE_COMPAT_DIR_INDEX))
   return make_indexed_dir(handle, dentry, inode, bh);
  brelse(bh);
 }
 bh = ext4_append(handle, dir, &block, &retval);
 if (!bh)
  return retval;
 de = (struct ext4_dir_entry_2 *) bh->b_data;
 de->inode = 0;
 de->rec_len = ext4_rec_len_to_disk(blocksize, blocksize);
 retval = add_dirent_to_buf(handle, dentry, inode, de, bh);
 brelse(bh);
 return retval;
}
