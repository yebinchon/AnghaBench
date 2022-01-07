
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext3_super_block {void* s_rev_level; int s_inode_size; void* s_first_ino; } ;
struct TYPE_2__ {struct ext3_super_block* s_es; } ;


 int EXT3_DYNAMIC_REV ;
 int EXT3_GOOD_OLD_FIRST_INO ;
 int EXT3_GOOD_OLD_INODE_SIZE ;
 scalar_t__ EXT3_GOOD_OLD_REV ;
 TYPE_1__* EXT3_SB (struct super_block*) ;
 int KERN_WARNING ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int ext3_msg (struct super_block*,int ,char*,int ) ;
 scalar_t__ le32_to_cpu (void*) ;

void ext3_update_dynamic_rev(struct super_block *sb)
{
 struct ext3_super_block *es = EXT3_SB(sb)->s_es;

 if (le32_to_cpu(es->s_rev_level) > EXT3_GOOD_OLD_REV)
  return;

 ext3_msg(sb, KERN_WARNING,
  "warning: updating to rev %d because of "
  "new feature flag, running e2fsck is recommended",
  EXT3_DYNAMIC_REV);

 es->s_first_ino = cpu_to_le32(EXT3_GOOD_OLD_FIRST_INO);
 es->s_inode_size = cpu_to_le16(EXT3_GOOD_OLD_INODE_SIZE);
 es->s_rev_level = cpu_to_le32(EXT3_DYNAMIC_REV);
}
