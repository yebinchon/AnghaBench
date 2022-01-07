
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct hpfs_sb_info {struct hpfs_sb_info* sb_bmp_dir; struct hpfs_sb_info* sb_cp_table; } ;


 struct hpfs_sb_info* hpfs_sb (struct super_block*) ;
 int kfree (struct hpfs_sb_info*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int unmark_dirty (struct super_block*) ;

__attribute__((used)) static void hpfs_put_super(struct super_block *s)
{
 struct hpfs_sb_info *sbi = hpfs_sb(s);

 lock_kernel();

 kfree(sbi->sb_cp_table);
 kfree(sbi->sb_bmp_dir);
 unmark_dirty(s);
 s->s_fs_info = ((void*)0);
 kfree(sbi);

 unlock_kernel();
}
