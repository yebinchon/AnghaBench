
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct fiemap_extent_info {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; int * p_hdr; } ;
struct ext4_ext_cache {scalar_t__ ec_block; scalar_t__ ec_len; int ec_start; } ;
typedef scalar_t__ ext4_lblk_t ;
typedef unsigned char __u64 ;
struct TYPE_4__ {int i_data_sem; } ;
struct TYPE_3__ {unsigned char s_blocksize_bits; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int EIO ;
 int EXT4_ERROR_INODE (struct inode*,char*,...) ;
 TYPE_2__* EXT4_I (struct inode*) ;
 scalar_t__ EXT_MAX_BLOCKS ;
 unsigned int FIEMAP_EXTENT_DELALLOC ;
 unsigned int FIEMAP_EXTENT_LAST ;
 unsigned int FIEMAP_EXTENT_UNWRITTEN ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 int down_read (int *) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 struct ext4_ext_path* ext4_ext_find_extent (struct inode*,scalar_t__,struct ext4_ext_path*) ;
 scalar_t__ ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_is_uninitialized (struct ext4_extent*) ;
 scalar_t__ ext4_ext_next_allocated_block (struct ext4_ext_path*) ;
 int ext4_ext_pblock (struct ext4_extent*) ;
 scalar_t__ ext4_find_delayed_extent (struct inode*,struct ext4_ext_cache*) ;
 int ext_depth (struct inode*) ;
 int fiemap_fill_next_extent (struct fiemap_extent_info*,unsigned char,unsigned char,unsigned char,unsigned int) ;
 int kfree (struct ext4_ext_path*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

__attribute__((used)) static int ext4_fill_fiemap_extents(struct inode *inode,
        ext4_lblk_t block, ext4_lblk_t num,
        struct fiemap_extent_info *fieinfo)
{
 struct ext4_ext_path *path = ((void*)0);
 struct ext4_ext_cache cbex;
 struct ext4_extent *ex;
 ext4_lblk_t next, next_del, start = 0, end = 0;
 ext4_lblk_t last = block + num;
 int exists, depth = 0, err = 0;
 unsigned int flags = 0;
 unsigned char blksize_bits = inode->i_sb->s_blocksize_bits;

 while (block < last && block != EXT_MAX_BLOCKS) {
  num = last - block;

  down_read(&EXT4_I(inode)->i_data_sem);

  if (path && ext_depth(inode) != depth) {

   kfree(path);
   path = ((void*)0);
  }

  path = ext4_ext_find_extent(inode, block, path);
  if (IS_ERR(path)) {
   up_read(&EXT4_I(inode)->i_data_sem);
   err = PTR_ERR(path);
   path = ((void*)0);
   break;
  }

  depth = ext_depth(inode);
  if (unlikely(path[depth].p_hdr == ((void*)0))) {
   up_read(&EXT4_I(inode)->i_data_sem);
   EXT4_ERROR_INODE(inode, "path[%d].p_hdr == NULL", depth);
   err = -EIO;
   break;
  }
  ex = path[depth].p_ext;
  next = ext4_ext_next_allocated_block(path);
  ext4_ext_drop_refs(path);

  flags = 0;
  exists = 0;
  if (!ex) {


   start = block;
   end = block + num;
  } else if (le32_to_cpu(ex->ee_block) > block) {

   start = block;
   end = le32_to_cpu(ex->ee_block);
   if (block + num < end)
    end = block + num;
  } else if (block >= le32_to_cpu(ex->ee_block)
     + ext4_ext_get_actual_len(ex)) {

   start = block;
   end = block + num;
   if (end >= next)
    end = next;
  } else if (block >= le32_to_cpu(ex->ee_block)) {




   start = block;
   end = le32_to_cpu(ex->ee_block)
    + ext4_ext_get_actual_len(ex);
   if (block + num < end)
    end = block + num;
   exists = 1;
  } else {
   BUG();
  }
  BUG_ON(end <= start);

  if (!exists) {
   cbex.ec_block = start;
   cbex.ec_len = end - start;
   cbex.ec_start = 0;
  } else {
   cbex.ec_block = le32_to_cpu(ex->ee_block);
   cbex.ec_len = ext4_ext_get_actual_len(ex);
   cbex.ec_start = ext4_ext_pblock(ex);
   if (ext4_ext_is_uninitialized(ex))
    flags |= FIEMAP_EXTENT_UNWRITTEN;
  }






  next_del = ext4_find_delayed_extent(inode, &cbex);
  if (!exists && (next_del != EXT_MAX_BLOCKS)) {
   struct ext4_ext_cache cbex2;

   exists = 1;
   flags |= FIEMAP_EXTENT_DELALLOC;






   cbex2.ec_start = 1;
   cbex2.ec_block = cbex.ec_block + cbex.ec_len;
   cbex2.ec_len = next - cbex2.ec_block;
   next_del = ext4_find_delayed_extent(inode, &cbex2);
  }
  up_read(&EXT4_I(inode)->i_data_sem);

  if (unlikely(cbex.ec_len == 0)) {
   EXT4_ERROR_INODE(inode, "cbex.ec_len == 0");
   err = -EIO;
   break;
  }


  if (next == next_del && next == EXT_MAX_BLOCKS)
   flags |= FIEMAP_EXTENT_LAST;

  if (exists) {
   err = fiemap_fill_next_extent(fieinfo,
    (__u64)cbex.ec_block << blksize_bits,
    (__u64)cbex.ec_start << blksize_bits,
    (__u64)cbex.ec_len << blksize_bits,
    flags);
   if (err < 0)
    break;
   if (err == 1) {
    err = 0;
    break;
   }
  }

  block = cbex.ec_block + cbex.ec_len;
 }

 if (path) {
  ext4_ext_drop_refs(path);
  kfree(path);
 }

 return err;
}
