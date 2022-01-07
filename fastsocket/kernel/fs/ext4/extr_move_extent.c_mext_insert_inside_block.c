
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_extent_header {int eh_entries; } ;
struct ext4_extent {scalar_t__ ee_len; } ;


 struct ext4_extent* EXT_LAST_EXTENT (struct ext4_extent_header*) ;
 int ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_ext_store_pblock (struct ext4_extent*,int ) ;
 int le16_add_cpu (int *,int) ;
 int memmove (struct ext4_extent*,struct ext4_extent*,unsigned long) ;

__attribute__((used)) static void
mext_insert_inside_block(struct ext4_extent *o_start,
         struct ext4_extent *o_end,
         struct ext4_extent *start_ext,
         struct ext4_extent *new_ext,
         struct ext4_extent *end_ext,
         struct ext4_extent_header *eh,
         int range_to_move)
{
 int i = 0;
 unsigned long len;


 if (range_to_move && o_end < EXT_LAST_EXTENT(eh)) {
  len = (unsigned long)(EXT_LAST_EXTENT(eh) + 1) -
   (unsigned long)(o_end + 1);
  memmove(o_end + 1 + range_to_move, o_end + 1, len);
 }


 if (start_ext->ee_len)
  o_start[i++].ee_len = start_ext->ee_len;


 if (new_ext->ee_len) {
  o_start[i] = *new_ext;
  ext4_ext_store_pblock(&o_start[i++], ext4_ext_pblock(new_ext));
 }


 if (end_ext->ee_len)
  o_start[i] = *end_ext;


 le16_add_cpu(&eh->eh_entries, range_to_move);
}
