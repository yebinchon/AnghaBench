
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct flex_groups {int dummy; } ;
struct ext4_sb_info {int s_log_groups_per_flex; unsigned int s_groups_count; TYPE_2__* s_flex_groups; TYPE_1__* s_es; } ;
struct ext4_group_desc {int dummy; } ;
typedef int ext4_group_t ;
struct TYPE_6__ {int used_dirs; int free_blocks; int free_inodes; } ;
struct TYPE_5__ {int s_log_groups_per_flex; int s_reserved_gdt_blocks; } ;


 int EXT4_DESC_PER_BLOCK_BITS (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int atomic_add (int ,int *) ;
 int ext4_flex_group (struct ext4_sb_info*,int) ;
 int ext4_free_blks_count (struct super_block*,struct ext4_group_desc*) ;
 int ext4_free_inodes_count (struct super_block*,struct ext4_group_desc*) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,int,int *) ;
 int ext4_msg (struct super_block*,int ,char*,int) ;
 int ext4_used_dirs_count (struct super_block*,struct ext4_group_desc*) ;
 TYPE_2__* kzalloc (size_t,int ) ;
 int le16_to_cpu (int ) ;
 int memset (TYPE_2__*,int ,size_t) ;
 TYPE_2__* vmalloc (size_t) ;

__attribute__((used)) static int ext4_fill_flex_info(struct super_block *sb)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_group_desc *gdp = ((void*)0);
 ext4_group_t flex_group_count;
 ext4_group_t flex_group;
 unsigned int groups_per_flex = 0;
 size_t size;
 int i;

 sbi->s_log_groups_per_flex = sbi->s_es->s_log_groups_per_flex;
 if (sbi->s_log_groups_per_flex < 1 || sbi->s_log_groups_per_flex > 31) {
  sbi->s_log_groups_per_flex = 0;
  return 1;
 }
 groups_per_flex = 1U << sbi->s_log_groups_per_flex;


 flex_group_count = ((sbi->s_groups_count + groups_per_flex - 1) +
   ((le16_to_cpu(sbi->s_es->s_reserved_gdt_blocks) + 1) <<
         EXT4_DESC_PER_BLOCK_BITS(sb))) / groups_per_flex;
 size = flex_group_count * sizeof(struct flex_groups);
 sbi->s_flex_groups = kzalloc(size, GFP_KERNEL);
 if (sbi->s_flex_groups == ((void*)0)) {
  sbi->s_flex_groups = vmalloc(size);
  if (sbi->s_flex_groups)
   memset(sbi->s_flex_groups, 0, size);
 }
 if (sbi->s_flex_groups == ((void*)0)) {
  ext4_msg(sb, KERN_ERR, "not enough memory for "
    "%u flex groups", flex_group_count);
  goto failed;
 }

 for (i = 0; i < sbi->s_groups_count; i++) {
  gdp = ext4_get_group_desc(sb, i, ((void*)0));

  flex_group = ext4_flex_group(sbi, i);
  atomic_add(ext4_free_inodes_count(sb, gdp),
      &sbi->s_flex_groups[flex_group].free_inodes);
  atomic_add(ext4_free_blks_count(sb, gdp),
      &sbi->s_flex_groups[flex_group].free_blocks);
  atomic_add(ext4_used_dirs_count(sb, gdp),
      &sbi->s_flex_groups[flex_group].used_dirs);
 }

 return 1;
failed:
 return 0;
}
