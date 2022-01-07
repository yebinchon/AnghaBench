
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_lblk_t ;


 int EXT4_EXT_DATA_VALID ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 int ext4_ext_dirty (int *,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 struct ext4_ext_path* ext4_ext_find_extent (struct inode*,scalar_t__,struct ext4_ext_path*) ;
 int ext4_ext_get_access (int *,struct inode*,struct ext4_ext_path*) ;
 unsigned int ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_mark_initialized (struct ext4_extent*) ;
 int ext4_ext_show_leaf (struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_try_to_merge (struct inode*,struct ext4_ext_path*,struct ext4_extent*) ;
 int ext4_split_unwritten_extents (int *,struct inode*,struct ext4_ext_path*,scalar_t__,unsigned int,int ) ;
 int ext_debug (char*,int ,unsigned long long,unsigned int) ;
 int ext_depth (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_convert_unwritten_extents_dio(handle_t *handle,
           struct inode *inode,
           ext4_lblk_t iblock,
           unsigned int max_blocks,
           struct ext4_ext_path *path)
{
 struct ext4_extent *ex;
 ext4_lblk_t ee_block;
 unsigned int ee_len;
 struct ext4_extent_header *eh;
 int depth;
 int err = 0;

 depth = ext_depth(inode);
 eh = path[depth].p_hdr;
 ex = path[depth].p_ext;
 ee_block = le32_to_cpu(ex->ee_block);
 ee_len = ext4_ext_get_actual_len(ex);

 ext_debug("ext4_convert_unwritten_extents_endio: inode %lu, logical"
    "block %llu, max_blocks %u\n", inode->i_ino,
    (unsigned long long)ee_block, ee_len);



 if (ee_block != iblock || ee_len > max_blocks) {
  err = ext4_split_unwritten_extents(handle, inode, path,
     iblock, max_blocks,
     EXT4_EXT_DATA_VALID);
  if (err < 0)
   goto out;
  ext4_ext_drop_refs(path);
  path = ext4_ext_find_extent(inode, iblock, path);
  if (IS_ERR(path)) {
   err = PTR_ERR(path);
   goto out;
  }
  depth = ext_depth(inode);
  ex = path[depth].p_ext;
 }

 err = ext4_ext_get_access(handle, inode, path + depth);
 if (err)
  goto out;

 ext4_ext_mark_initialized(ex);




 ext4_ext_try_to_merge(inode, path, ex);


 err = ext4_ext_dirty(handle, inode, path + depth);
out:
 ext4_ext_show_leaf(inode, path);
 return err;
}
