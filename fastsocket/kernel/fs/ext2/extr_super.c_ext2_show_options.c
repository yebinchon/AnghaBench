
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct super_block* mnt_sb; } ;
struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct ext2_super_block {int s_errors; int s_def_resgid; int s_def_resuid; int s_default_mount_opts; } ;
struct ext2_sb_info {int s_sb_block; int s_resuid; int s_resgid; int s_mount_opt; struct ext2_super_block* s_es; } ;


 int DEBUG ;
 int ERRORS_CONT ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 unsigned long EXT2_DEFM_ACL ;
 unsigned long EXT2_DEFM_BSDGROUPS ;
 unsigned long EXT2_DEFM_XATTR_USER ;
 int EXT2_DEF_RESGID ;
 int EXT2_DEF_RESUID ;
 int EXT2_ERRORS_CONTINUE ;
 int EXT2_ERRORS_PANIC ;
 int EXT2_MOUNT_GRPQUOTA ;
 int EXT2_MOUNT_USRQUOTA ;
 int EXT2_MOUNT_XIP ;
 struct ext2_sb_info* EXT2_SB (struct super_block*) ;
 int GRPID ;
 int MINIX_DF ;
 int NOBH ;
 int NO_UID32 ;
 int OLDALLOC ;
 int POSIX_ACL ;
 int RESERVATION ;
 int XATTR_USER ;
 int le16_to_cpu (int ) ;
 unsigned long le32_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;
 scalar_t__ test_opt (struct super_block*,int ) ;

__attribute__((used)) static int ext2_show_options(struct seq_file *seq, struct vfsmount *vfs)
{
 struct super_block *sb = vfs->mnt_sb;
 struct ext2_sb_info *sbi = EXT2_SB(sb);
 struct ext2_super_block *es = sbi->s_es;
 unsigned long def_mount_opts;

 def_mount_opts = le32_to_cpu(es->s_default_mount_opts);

 if (sbi->s_sb_block != 1)
  seq_printf(seq, ",sb=%lu", sbi->s_sb_block);
 if (test_opt(sb, MINIX_DF))
  seq_puts(seq, ",minixdf");
 if (test_opt(sb, GRPID))
  seq_puts(seq, ",grpid");
 if (!test_opt(sb, GRPID) && (def_mount_opts & EXT2_DEFM_BSDGROUPS))
  seq_puts(seq, ",nogrpid");
 if (sbi->s_resuid != EXT2_DEF_RESUID ||
     le16_to_cpu(es->s_def_resuid) != EXT2_DEF_RESUID) {
  seq_printf(seq, ",resuid=%u", sbi->s_resuid);
 }
 if (sbi->s_resgid != EXT2_DEF_RESGID ||
     le16_to_cpu(es->s_def_resgid) != EXT2_DEF_RESGID) {
  seq_printf(seq, ",resgid=%u", sbi->s_resgid);
 }
 if (test_opt(sb, ERRORS_RO)) {
  int def_errors = le16_to_cpu(es->s_errors);

  if (def_errors == EXT2_ERRORS_PANIC ||
      def_errors == EXT2_ERRORS_CONTINUE) {
   seq_puts(seq, ",errors=remount-ro");
  }
 }
 if (test_opt(sb, ERRORS_CONT))
  seq_puts(seq, ",errors=continue");
 if (test_opt(sb, ERRORS_PANIC))
  seq_puts(seq, ",errors=panic");
 if (test_opt(sb, NO_UID32))
  seq_puts(seq, ",nouid32");
 if (test_opt(sb, DEBUG))
  seq_puts(seq, ",debug");
 if (test_opt(sb, OLDALLOC))
  seq_puts(seq, ",oldalloc");
 if (test_opt(sb, NOBH))
  seq_puts(seq, ",nobh");
 if (!test_opt(sb, RESERVATION))
  seq_puts(seq, ",noreservation");

 return 0;
}
