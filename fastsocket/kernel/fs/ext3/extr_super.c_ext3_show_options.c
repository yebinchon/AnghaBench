
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct super_block* mnt_sb; } ;
struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct ext3_super_block {int s_errors; int s_def_resgid; int s_def_resuid; int s_default_mount_opts; } ;
struct ext3_sb_info {int s_sb_block; int s_resuid; int s_resgid; int s_commit_interval; int s_mount_opt; struct ext3_super_block* s_es; } ;


 int BARRIER ;
 int DATA_ERR_ABORT ;
 int DEBUG ;
 int ERRORS_CONT ;
 int ERRORS_PANIC ;
 int ERRORS_RO ;
 unsigned long EXT3_DEFM_ACL ;
 unsigned long EXT3_DEFM_BSDGROUPS ;
 unsigned long EXT3_DEFM_XATTR_USER ;
 int EXT3_DEF_RESGID ;
 int EXT3_DEF_RESUID ;
 int EXT3_ERRORS_CONTINUE ;
 int EXT3_ERRORS_PANIC ;
 int EXT3_MOUNT_DATA_FLAGS ;
 struct ext3_sb_info* EXT3_SB (struct super_block*) ;
 int GRPID ;
 int HZ ;
 int MINIX_DF ;
 int NOBH ;
 int NO_UID32 ;
 int OLDALLOC ;
 int POSIX_ACL ;
 int RESERVATION ;
 int XATTR_USER ;
 unsigned int data_mode_string (int) ;
 int ext3_show_quota_options (struct seq_file*,struct super_block*) ;
 int le16_to_cpu (int ) ;
 unsigned long le32_to_cpu (int ) ;
 int seq_printf (struct seq_file*,char*,unsigned int) ;
 int seq_puts (struct seq_file*,char*) ;
 scalar_t__ test_opt (struct super_block*,int ) ;

__attribute__((used)) static int ext3_show_options(struct seq_file *seq, struct vfsmount *vfs)
{
 struct super_block *sb = vfs->mnt_sb;
 struct ext3_sb_info *sbi = EXT3_SB(sb);
 struct ext3_super_block *es = sbi->s_es;
 unsigned long def_mount_opts;

 def_mount_opts = le32_to_cpu(es->s_default_mount_opts);

 if (sbi->s_sb_block != 1)
  seq_printf(seq, ",sb=%lu", sbi->s_sb_block);
 if (test_opt(sb, MINIX_DF))
  seq_puts(seq, ",minixdf");
 if (test_opt(sb, GRPID))
  seq_puts(seq, ",grpid");
 if (!test_opt(sb, GRPID) && (def_mount_opts & EXT3_DEFM_BSDGROUPS))
  seq_puts(seq, ",nogrpid");
 if (sbi->s_resuid != EXT3_DEF_RESUID ||
     le16_to_cpu(es->s_def_resuid) != EXT3_DEF_RESUID) {
  seq_printf(seq, ",resuid=%u", sbi->s_resuid);
 }
 if (sbi->s_resgid != EXT3_DEF_RESGID ||
     le16_to_cpu(es->s_def_resgid) != EXT3_DEF_RESGID) {
  seq_printf(seq, ",resgid=%u", sbi->s_resgid);
 }
 if (test_opt(sb, ERRORS_RO)) {
  int def_errors = le16_to_cpu(es->s_errors);

  if (def_errors == EXT3_ERRORS_PANIC ||
      def_errors == EXT3_ERRORS_CONTINUE) {
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
 if (!test_opt(sb, RESERVATION))
  seq_puts(seq, ",noreservation");
 if (sbi->s_commit_interval) {
  seq_printf(seq, ",commit=%u",
      (unsigned) (sbi->s_commit_interval / HZ));
 }






 seq_puts(seq, ",barrier=");
 seq_puts(seq, test_opt(sb, BARRIER) ? "1" : "0");
 if (test_opt(sb, NOBH))
  seq_puts(seq, ",nobh");

 seq_printf(seq, ",data=%s", data_mode_string(sbi->s_mount_opt &
           EXT3_MOUNT_DATA_FLAGS));
 if (test_opt(sb, DATA_ERR_ABORT))
  seq_puts(seq, ",data_err=abort");

 ext3_show_quota_options(seq, sb);

 return 0;
}
