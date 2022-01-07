
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_sb; } ;
struct seq_file {int dummy; } ;
struct jfs_sb_info {int uid; int gid; int umask; int flag; TYPE_1__* nls_tab; } ;
struct TYPE_2__ {int charset; } ;


 int JFS_ERR_CONTINUE ;
 int JFS_ERR_PANIC ;
 int JFS_GRPQUOTA ;
 int JFS_NOINTEGRITY ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int JFS_USRQUOTA ;
 int seq_printf (struct seq_file*,char*,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int jfs_show_options(struct seq_file *seq, struct vfsmount *vfs)
{
 struct jfs_sb_info *sbi = JFS_SBI(vfs->mnt_sb);

 if (sbi->uid != -1)
  seq_printf(seq, ",uid=%d", sbi->uid);
 if (sbi->gid != -1)
  seq_printf(seq, ",gid=%d", sbi->gid);
 if (sbi->umask != -1)
  seq_printf(seq, ",umask=%03o", sbi->umask);
 if (sbi->flag & JFS_NOINTEGRITY)
  seq_puts(seq, ",nointegrity");
 if (sbi->nls_tab)
  seq_printf(seq, ",iocharset=%s", sbi->nls_tab->charset);
 if (sbi->flag & JFS_ERR_CONTINUE)
  seq_printf(seq, ",errors=continue");
 if (sbi->flag & JFS_ERR_PANIC)
  seq_printf(seq, ",errors=panic");
 return 0;
}
