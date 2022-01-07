
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef unsigned long ext2_fsblk_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_first_data_block; } ;


 scalar_t__ EXT2_BLOCKS_PER_GROUP (struct super_block*) ;
 TYPE_2__* EXT2_SB (struct super_block*) ;
 unsigned long le32_to_cpu (int ) ;

__attribute__((used)) static inline ext2_fsblk_t
ext2_group_first_block_no(struct super_block *sb, unsigned long group_no)
{
 return group_no * (ext2_fsblk_t)EXT2_BLOCKS_PER_GROUP(sb) +
  le32_to_cpu(EXT2_SB(sb)->s_es->s_first_data_block);
}
