
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int mnt_sb; } ;
struct seq_file {int dummy; } ;
struct hfs_sb_info {scalar_t__ s_creator; scalar_t__ s_type; int s_file_umask; int s_dir_umask; scalar_t__ s_quiet; TYPE_2__* nls_io; TYPE_1__* nls_disk; int session; int part; int s_gid; int s_uid; } ;
struct TYPE_4__ {int charset; } ;
struct TYPE_3__ {int charset; } ;


 struct hfs_sb_info* HFS_SB (int ) ;
 scalar_t__ cpu_to_be32 (int) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int hfs_show_options(struct seq_file *seq, struct vfsmount *mnt)
{
 struct hfs_sb_info *sbi = HFS_SB(mnt->mnt_sb);

 if (sbi->s_creator != cpu_to_be32(0x3f3f3f3f))
  seq_printf(seq, ",creator=%.4s", (char *)&sbi->s_creator);
 if (sbi->s_type != cpu_to_be32(0x3f3f3f3f))
  seq_printf(seq, ",type=%.4s", (char *)&sbi->s_type);
 seq_printf(seq, ",uid=%u,gid=%u", sbi->s_uid, sbi->s_gid);
 if (sbi->s_file_umask != 0133)
  seq_printf(seq, ",file_umask=%o", sbi->s_file_umask);
 if (sbi->s_dir_umask != 0022)
  seq_printf(seq, ",dir_umask=%o", sbi->s_dir_umask);
 if (sbi->part >= 0)
  seq_printf(seq, ",part=%u", sbi->part);
 if (sbi->session >= 0)
  seq_printf(seq, ",session=%u", sbi->session);
 if (sbi->nls_disk)
  seq_printf(seq, ",codepage=%s", sbi->nls_disk->charset);
 if (sbi->nls_io)
  seq_printf(seq, ",iocharset=%s", sbi->nls_io->charset);
 if (sbi->s_quiet)
  seq_printf(seq, ",quiet");
 return 0;
}
