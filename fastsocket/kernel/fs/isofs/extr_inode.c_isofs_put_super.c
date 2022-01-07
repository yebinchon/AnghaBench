
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct isofs_sb_info {int s_nls_iocharset; } ;


 struct isofs_sb_info* ISOFS_SB (struct super_block*) ;
 int kfree (struct isofs_sb_info*) ;
 int lock_kernel () ;
 int unload_nls (int ) ;
 int unlock_kernel () ;

__attribute__((used)) static void isofs_put_super(struct super_block *sb)
{
 struct isofs_sb_info *sbi = ISOFS_SB(sb);
 kfree(sbi);
 sb->s_fs_info = ((void*)0);
 return;
}
