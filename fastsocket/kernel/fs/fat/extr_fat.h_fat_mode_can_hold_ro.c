
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fs_dmask; int fs_fmask; int rodir; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct inode {int i_mode; int i_sb; } ;
typedef int mode_t ;


 struct msdos_sb_info* MSDOS_SB (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 int S_IWUGO ;

__attribute__((used)) static inline int fat_mode_can_hold_ro(struct inode *inode)
{
 struct msdos_sb_info *sbi = MSDOS_SB(inode->i_sb);
 mode_t mask;

 if (S_ISDIR(inode->i_mode)) {
  if (!sbi->options.rodir)
   return 0;
  mask = ~sbi->options.fs_dmask;
 } else
  mask = ~sbi->options.fs_fmask;

 if (!(mask & S_IWUGO))
  return 0;
 return 1;
}
