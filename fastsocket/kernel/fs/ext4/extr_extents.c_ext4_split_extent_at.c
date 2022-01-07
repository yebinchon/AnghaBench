
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct ext4_extent {void* ee_len; int ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef int orig_ex ;
typedef int handle_t ;
typedef scalar_t__ ext4_lblk_t ;
typedef scalar_t__ ext4_fsblk_t ;


 int BUG_ON (int) ;
 int ENOSPC ;
 int EXT4_EXT_MARK_UNINIT1 ;
 int EXT4_EXT_MARK_UNINIT2 ;
 int EXT4_EXT_MAY_ZEROOUT ;
 int EXT4_GET_BLOCKS_DIO ;
 void* cpu_to_le16 (unsigned int) ;
 int cpu_to_le32 (scalar_t__) ;
 int ext4_ext_dirty (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_get_access (int *,struct inode*,struct ext4_ext_path*) ;
 unsigned int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_insert_extent (int *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,int) ;
 int ext4_ext_mark_initialized (struct ext4_extent*) ;
 int ext4_ext_mark_uninitialized (struct ext4_extent*) ;
 scalar_t__ ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_ext_show_leaf (struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_store_pblock (struct ext4_extent*,scalar_t__) ;
 int ext4_ext_try_to_merge (struct inode*,struct ext4_ext_path*,struct ext4_extent*) ;
 int ext4_ext_zeroout (struct inode*,struct ext4_extent*) ;
 int ext_debug (char*,int ,unsigned long long) ;
 unsigned int ext_depth (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memcpy (struct ext4_extent*,struct ext4_extent*,int) ;

__attribute__((used)) static int ext4_split_extent_at(handle_t *handle,
        struct inode *inode,
        struct ext4_ext_path *path,
        ext4_lblk_t split,
        int split_flag,
        int flags)
{
 ext4_fsblk_t newblock;
 ext4_lblk_t ee_block;
 struct ext4_extent *ex, newex, orig_ex;
 struct ext4_extent *ex2 = ((void*)0);
 unsigned int ee_len, depth;
 int err = 0;

 ext_debug("ext4_split_extents_at: inode %lu, logical"
  "block %llu\n", inode->i_ino, (unsigned long long)split);

 ext4_ext_show_leaf(inode, path);

 depth = ext_depth(inode);
 ex = path[depth].p_ext;
 ee_block = le32_to_cpu(ex->ee_block);
 ee_len = ext4_ext_get_actual_len(ex);
 newblock = split - ee_block + ext4_ext_pblock(ex);

 BUG_ON(split < ee_block || split >= (ee_block + ee_len));

 err = ext4_ext_get_access(handle, inode, path + depth);
 if (err)
  goto out;

 if (split == ee_block) {





  if (split_flag & EXT4_EXT_MARK_UNINIT2)
   ext4_ext_mark_uninitialized(ex);
  else
   ext4_ext_mark_initialized(ex);

  if (!(flags & EXT4_GET_BLOCKS_DIO))
   ext4_ext_try_to_merge(inode, path, ex);

  err = ext4_ext_dirty(handle, inode, path + depth);
  goto out;
 }


 memcpy(&orig_ex, ex, sizeof(orig_ex));
 ex->ee_len = cpu_to_le16(split - ee_block);
 if (split_flag & EXT4_EXT_MARK_UNINIT1)
  ext4_ext_mark_uninitialized(ex);





 err = ext4_ext_dirty(handle, inode, path + depth);
 if (err)
  goto fix_extent_len;

 ex2 = &newex;
 ex2->ee_block = cpu_to_le32(split);
 ex2->ee_len = cpu_to_le16(ee_len - (split - ee_block));
 ext4_ext_store_pblock(ex2, newblock);
 if (split_flag & EXT4_EXT_MARK_UNINIT2)
  ext4_ext_mark_uninitialized(ex2);

 err = ext4_ext_insert_extent(handle, inode, path, &newex, flags);
 if (err == -ENOSPC && (EXT4_EXT_MAY_ZEROOUT & split_flag)) {
  err = ext4_ext_zeroout(inode, &orig_ex);
  if (err)
   goto fix_extent_len;

  ex->ee_len = cpu_to_le16(ee_len);
  ext4_ext_try_to_merge(inode, path, ex);
  err = ext4_ext_dirty(handle, inode, path + depth);
  goto out;
 } else if (err)
  goto fix_extent_len;

out:
 ext4_ext_show_leaf(inode, path);
 return err;

fix_extent_len:
 ex->ee_len = orig_ex.ee_len;
 ext4_ext_dirty(handle, inode, path + depth);
 return err;
}
