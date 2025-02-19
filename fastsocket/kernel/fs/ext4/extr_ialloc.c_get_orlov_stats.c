
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct orlov_stats {void* used_dirs; void* free_blocks; void* free_inodes; } ;
struct flex_groups {int used_dirs; int free_blocks; int free_inodes; } ;
struct ext4_group_desc {int dummy; } ;
typedef size_t ext4_group_t ;
struct TYPE_2__ {struct flex_groups* s_flex_groups; } ;


 TYPE_1__* EXT4_SB (struct super_block*) ;
 void* atomic_read (int *) ;
 void* ext4_free_blks_count (struct super_block*,struct ext4_group_desc*) ;
 void* ext4_free_inodes_count (struct super_block*,struct ext4_group_desc*) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,size_t,int *) ;
 void* ext4_used_dirs_count (struct super_block*,struct ext4_group_desc*) ;

void get_orlov_stats(struct super_block *sb, ext4_group_t g,
         int flex_size, struct orlov_stats *stats)
{
 struct ext4_group_desc *desc;
 struct flex_groups *flex_group = EXT4_SB(sb)->s_flex_groups;

 if (flex_size > 1) {
  stats->free_inodes = atomic_read(&flex_group[g].free_inodes);
  stats->free_blocks = atomic_read(&flex_group[g].free_blocks);
  stats->used_dirs = atomic_read(&flex_group[g].used_dirs);
  return;
 }

 desc = ext4_get_group_desc(sb, g, ((void*)0));
 if (desc) {
  stats->free_inodes = ext4_free_inodes_count(sb, desc);
  stats->free_blocks = ext4_free_blks_count(sb, desc);
  stats->used_dirs = ext4_used_dirs_count(sb, desc);
 } else {
  stats->free_inodes = 0;
  stats->free_blocks = 0;
  stats->used_dirs = 0;
 }
}
