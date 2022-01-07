
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext2_sb_info {TYPE_1__* s_es; int s_mount_state; } ;
struct TYPE_2__ {int s_state; } ;


 struct ext2_sb_info* EXT2_SB (struct super_block*) ;
 int cpu_to_le16 (int ) ;
 int ext2_sync_super (struct super_block*,TYPE_1__*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int ext2_freeze(struct super_block *sb)
{
 struct ext2_sb_info *sbi = EXT2_SB(sb);


 lock_kernel();
 sbi->s_es->s_state = cpu_to_le16(sbi->s_mount_state);
 unlock_kernel();
 ext2_sync_super(sb, sbi->s_es);

 return 0;
}
