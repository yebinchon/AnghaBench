
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef scalar_t__ ext4_lblk_t ;


 int BUG () ;
 int BUG_ON (int) ;
 unsigned long EXT_MAX_BLOCKS ;
 scalar_t__ ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_next_allocated_block (struct ext4_ext_path*) ;
 int ext4_ext_put_in_cache (struct inode*,scalar_t__,unsigned long,int ) ;
 int ext_debug (char*,...) ;
 int ext_depth (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void
ext4_ext_put_gap_in_cache(struct inode *inode, struct ext4_ext_path *path,
    ext4_lblk_t block)
{
 int depth = ext_depth(inode);
 unsigned long len;
 ext4_lblk_t lblock;
 struct ext4_extent *ex;

 ex = path[depth].p_ext;
 if (ex == ((void*)0)) {

  lblock = 0;
  len = EXT_MAX_BLOCKS;
  ext_debug("cache gap(whole file):");
 } else if (block < le32_to_cpu(ex->ee_block)) {
  lblock = block;
  len = le32_to_cpu(ex->ee_block) - block;
  ext_debug("cache gap(before): %u [%u:%u]",
    block,
    le32_to_cpu(ex->ee_block),
     ext4_ext_get_actual_len(ex));
 } else if (block >= le32_to_cpu(ex->ee_block)
   + ext4_ext_get_actual_len(ex)) {
  ext4_lblk_t next;
  lblock = le32_to_cpu(ex->ee_block)
   + ext4_ext_get_actual_len(ex);

  next = ext4_ext_next_allocated_block(path);
  ext_debug("cache gap(after): [%u:%u] %u",
    le32_to_cpu(ex->ee_block),
    ext4_ext_get_actual_len(ex),
    block);
  BUG_ON(next == lblock);
  len = next - lblock;
 } else {
  lblock = len = 0;
  BUG();
 }

 ext_debug(" -> %u:%lu\n", lblock, len);
 ext4_ext_put_in_cache(inode, lblock, len, 0);
}
