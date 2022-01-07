
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef unsigned long ext4_group_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_first_meta_bg; } ;


 unsigned long EXT4_DESC_PER_BLOCK (struct super_block*) ;
 int EXT4_FEATURE_INCOMPAT_META_BG ;
 int EXT4_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 TYPE_2__* EXT4_SB (struct super_block*) ;
 unsigned long ext4_bg_num_gdb_meta (struct super_block*,unsigned long) ;
 unsigned long ext4_bg_num_gdb_nometa (struct super_block*,unsigned long) ;
 unsigned long le32_to_cpu (int ) ;

unsigned long ext4_bg_num_gdb(struct super_block *sb, ext4_group_t group)
{
 unsigned long first_meta_bg =
   le32_to_cpu(EXT4_SB(sb)->s_es->s_first_meta_bg);
 unsigned long metagroup = group / EXT4_DESC_PER_BLOCK(sb);

 if (!EXT4_HAS_INCOMPAT_FEATURE(sb,EXT4_FEATURE_INCOMPAT_META_BG) ||
   metagroup < first_meta_bg)
  return ext4_bg_num_gdb_nometa(sb, group);

 return ext4_bg_num_gdb_meta(sb,group);

}
