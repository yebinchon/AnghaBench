
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {scalar_t__ s_forced_ro; } ;
struct super_block {int s_dirt; } ;


 int MS_RDONLY ;
 struct sysv_sb_info* SYSV_SB (struct super_block*) ;
 int lock_super (struct super_block*) ;
 int unlock_super (struct super_block*) ;

__attribute__((used)) static int sysv_remount(struct super_block *sb, int *flags, char *data)
{
 struct sysv_sb_info *sbi = SYSV_SB(sb);
 lock_super(sb);
 if (sbi->s_forced_ro)
  *flags |= MS_RDONLY;
 if (!(*flags & MS_RDONLY))
  sb->s_dirt = 1;
 unlock_super(sb);
 return 0;
}
