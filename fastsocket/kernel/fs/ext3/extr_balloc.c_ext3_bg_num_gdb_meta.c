
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 unsigned long EXT3_DESC_PER_BLOCK (struct super_block*) ;

__attribute__((used)) static unsigned long ext3_bg_num_gdb_meta(struct super_block *sb, int group)
{
 unsigned long metagroup = group / EXT3_DESC_PER_BLOCK(sb);
 unsigned long first = metagroup * EXT3_DESC_PER_BLOCK(sb);
 unsigned long last = first + EXT3_DESC_PER_BLOCK(sb) - 1;

 if (group == first || group == first + 1 || group == last)
  return 1;
 return 0;
}
