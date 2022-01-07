
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; int * s_fs_info; } ;
struct affs_sb_info {int s_root_bh; struct affs_sb_info* s_prefix; } ;


 struct affs_sb_info* AFFS_SB (struct super_block*) ;
 int MS_RDONLY ;
 int affs_brelse (int ) ;
 int affs_commit_super (struct super_block*,int) ;
 int affs_free_bitmap (struct super_block*) ;
 int kfree (struct affs_sb_info*) ;
 int lock_kernel () ;
 int pr_debug (char*) ;
 int unlock_kernel () ;

__attribute__((used)) static void
affs_put_super(struct super_block *sb)
{
 struct affs_sb_info *sbi = AFFS_SB(sb);
 pr_debug("AFFS: put_super()\n");

 lock_kernel();

 if (!(sb->s_flags & MS_RDONLY))
  affs_commit_super(sb, 1);

 kfree(sbi->s_prefix);
 affs_free_bitmap(sb);
 affs_brelse(sbi->s_root_bh);
 kfree(sbi);
 sb->s_fs_info = ((void*)0);

 unlock_kernel();
}
