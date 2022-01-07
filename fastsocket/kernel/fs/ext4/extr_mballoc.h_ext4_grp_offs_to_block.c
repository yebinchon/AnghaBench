
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_free_extent {int fe_start; scalar_t__ fe_group; } ;
typedef int ext4_fsblk_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int s_first_data_block; } ;


 int EXT4_BLOCKS_PER_GROUP (struct super_block*) ;
 TYPE_2__* EXT4_SB (struct super_block*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline ext4_fsblk_t ext4_grp_offs_to_block(struct super_block *sb,
     struct ext4_free_extent *fex)
{
 ext4_fsblk_t block;

 block = (ext4_fsblk_t) fex->fe_group * EXT4_BLOCKS_PER_GROUP(sb)
   + fex->fe_start
   + le32_to_cpu(EXT4_SB(sb)->s_es->s_first_data_block);
 return block;
}
