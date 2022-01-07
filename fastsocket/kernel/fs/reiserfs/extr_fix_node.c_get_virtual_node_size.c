
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int dummy; } ;
struct virtual_item {int dummy; } ;
struct super_block {unsigned long s_blocksize; } ;
struct direntry_uarea {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u16 ;


 unsigned long BLKH_SIZE ;
 unsigned long DEH_SIZE ;
 unsigned long IH_SIZE ;
 unsigned long MIN_ITEM_LEN ;
 unsigned long MIN_NAME_LEN ;
 int max (int,int) ;

__attribute__((used)) static int get_virtual_node_size(struct super_block *sb, struct buffer_head *bh)
{
 int max_num_of_items;
 int max_num_of_entries;
 unsigned long blocksize = sb->s_blocksize;



 max_num_of_items = (blocksize - BLKH_SIZE) / (IH_SIZE + MIN_ITEM_LEN);
 max_num_of_entries = (blocksize - BLKH_SIZE - IH_SIZE) /
     (DEH_SIZE + 1);

 return sizeof(struct virtual_node) +
     max(max_num_of_items * sizeof(struct virtual_item),
  sizeof(struct virtual_item) + sizeof(struct direntry_uarea) +
  (max_num_of_entries - 1) * sizeof(__u16));
}
