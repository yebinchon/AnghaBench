
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_sb_info {struct ufs_sb_info* s_uspi; } ;
struct super_block {int s_flags; int * s_fs_info; scalar_t__ s_dirt; } ;


 int MS_RDONLY ;
 int UFSD (char*) ;
 struct ufs_sb_info* UFS_SB (struct super_block*) ;
 int kfree (struct ufs_sb_info*) ;
 int ubh_brelse_uspi (struct ufs_sb_info*) ;
 int ufs_put_super_internal (struct super_block*) ;
 int ufs_write_super (struct super_block*) ;

__attribute__((used)) static void ufs_put_super(struct super_block *sb)
{
 struct ufs_sb_info * sbi = UFS_SB(sb);

 UFSD("ENTER\n");

 if (sb->s_dirt)
  ufs_write_super(sb);

 if (!(sb->s_flags & MS_RDONLY))
  ufs_put_super_internal(sb);

 ubh_brelse_uspi (sbi->s_uspi);
 kfree (sbi->s_uspi);
 kfree (sbi);
 sb->s_fs_info = ((void*)0);
 UFSD("EXIT\n");
 return;
}
