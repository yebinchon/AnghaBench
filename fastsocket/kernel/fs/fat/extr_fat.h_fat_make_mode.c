
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int fs_dmask; int fs_fmask; int rodir; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
typedef int mode_t ;


 int ATTR_DIR ;
 int ATTR_RO ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IWUGO ;

__attribute__((used)) static inline mode_t fat_make_mode(struct msdos_sb_info *sbi,
       u8 attrs, mode_t mode)
{
 if (attrs & ATTR_RO && !((attrs & ATTR_DIR) && !sbi->options.rodir))
  mode &= ~S_IWUGO;

 if (attrs & ATTR_DIR)
  return (mode & ~sbi->options.fs_dmask) | S_IFDIR;
 else
  return (mode & ~sbi->options.fs_fmask) | S_IFREG;
}
