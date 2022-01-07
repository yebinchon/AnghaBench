
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int * s_fs_info; scalar_t__ s_dirt; } ;
struct TYPE_2__ {scalar_t__ iocharset; } ;
struct msdos_sb_info {TYPE_1__ options; int nls_io; int nls_disk; int fat_inode; } ;


 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 scalar_t__ fat_default_iocharset ;
 int fat_write_super (struct super_block*) ;
 int iput (int ) ;
 int kfree (struct msdos_sb_info*) ;
 int lock_kernel () ;
 int unload_nls (int ) ;
 int unlock_kernel () ;

__attribute__((used)) static void fat_put_super(struct super_block *sb)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);

 lock_kernel();

 if (sb->s_dirt)
  fat_write_super(sb);

 iput(sbi->fat_inode);

 unload_nls(sbi->nls_disk);
 unload_nls(sbi->nls_io);

 if (sbi->options.iocharset != fat_default_iocharset)
  kfree(sbi->options.iocharset);

 sb->s_fs_info = ((void*)0);
 kfree(sbi);

 unlock_kernel();
}
