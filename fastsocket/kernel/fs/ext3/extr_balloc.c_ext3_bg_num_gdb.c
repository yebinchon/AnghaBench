
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_first_meta_bg; } ;


 int EXT3_DESC_PER_BLOCK (struct super_block*) ;
 int EXT3_FEATURE_INCOMPAT_META_BG ;
 int EXT3_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 TYPE_2__* EXT3_SB (struct super_block*) ;
 unsigned long ext3_bg_num_gdb_meta (struct super_block*,int) ;
 unsigned long ext3_bg_num_gdb_nometa (struct super_block*,int) ;
 unsigned long le32_to_cpu (int ) ;

unsigned long ext3_bg_num_gdb(struct super_block *sb, int group)
{
 unsigned long first_meta_bg =
   le32_to_cpu(EXT3_SB(sb)->s_es->s_first_meta_bg);
 unsigned long metagroup = group / EXT3_DESC_PER_BLOCK(sb);

 if (!EXT3_HAS_INCOMPAT_FEATURE(sb,EXT3_FEATURE_INCOMPAT_META_BG) ||
   metagroup < first_meta_bg)
  return ext3_bg_num_gdb_nometa(sb,group);

 return ext3_bg_num_gdb_meta(sb,group);

}
