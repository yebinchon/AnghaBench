
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct super_block* mnt_sb; } ;
struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct nilfs_sb_info {scalar_t__ s_snapshot_cno; } ;


 int BARRIER ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 int SNAPSHOT ;
 int STRICT_ORDER ;
 scalar_t__ nilfs_test_opt (struct nilfs_sb_info*,int ) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int nilfs_show_options(struct seq_file *seq, struct vfsmount *vfs)
{
 struct super_block *sb = vfs->mnt_sb;
 struct nilfs_sb_info *sbi = NILFS_SB(sb);

 if (!nilfs_test_opt(sbi, BARRIER))
  seq_printf(seq, ",barrier=off");
 if (nilfs_test_opt(sbi, SNAPSHOT))
  seq_printf(seq, ",cp=%llu",
      (unsigned long long int)sbi->s_snapshot_cno);
 if (nilfs_test_opt(sbi, ERRORS_RO))
  seq_printf(seq, ",errors=remount-ro");
 if (nilfs_test_opt(sbi, ERRORS_PANIC))
  seq_printf(seq, ",errors=panic");
 if (nilfs_test_opt(sbi, STRICT_ORDER))
  seq_printf(seq, ",order=strict");

 return 0;
}
