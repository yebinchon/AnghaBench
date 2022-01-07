
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent_header {int eh_entries; int eh_max; } ;
struct ext4_extent {scalar_t__ ee_len; } ;
struct ext4_ext_path {int p_depth; int p_bh; struct ext4_extent_header* p_hdr; } ;
typedef int handle_t ;


 int ext4_handle_dirty_metadata (int *,struct inode*,int ) ;
 int ext4_journal_get_write_access (int *,int ) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int le16_to_cpu (int ) ;
 int mext_insert_across_blocks (int *,struct inode*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*) ;
 int mext_insert_inside_block (struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent*,struct ext4_extent_header*,int) ;

__attribute__((used)) static int
mext_insert_extents(handle_t *handle, struct inode *orig_inode,
    struct ext4_ext_path *orig_path,
    struct ext4_extent *o_start,
    struct ext4_extent *o_end,
    struct ext4_extent *start_ext,
    struct ext4_extent *new_ext,
    struct ext4_extent *end_ext)
{
 struct ext4_extent_header *eh;
 unsigned long need_slots, slots_range;
 int range_to_move, depth, ret;





 need_slots = (start_ext->ee_len ? 1 : 0) + (end_ext->ee_len ? 1 : 0) +
  (new_ext->ee_len ? 1 : 0);


 slots_range = ((unsigned long)(o_end + 1) - (unsigned long)o_start + 1)
  / sizeof(struct ext4_extent);


 range_to_move = need_slots - slots_range;
 depth = orig_path->p_depth;
 orig_path += depth;
 eh = orig_path->p_hdr;

 if (depth) {

  ret = ext4_journal_get_write_access(handle, orig_path->p_bh);
  if (ret)
   return ret;
 }


 if (range_to_move > 0 &&
  (range_to_move > le16_to_cpu(eh->eh_max)
   - le16_to_cpu(eh->eh_entries))) {

  ret = mext_insert_across_blocks(handle, orig_inode, o_start,
     o_end, start_ext, new_ext, end_ext);
  if (ret < 0)
   return ret;
 } else
  mext_insert_inside_block(o_start, o_end, start_ext, new_ext,
      end_ext, eh, range_to_move);

 if (depth) {
  ret = ext4_handle_dirty_metadata(handle, orig_inode,
       orig_path->p_bh);
  if (ret)
   return ret;
 } else {
  ret = ext4_mark_inode_dirty(handle, orig_inode);
  if (ret < 0)
   return ret;
 }

 return 0;
}
