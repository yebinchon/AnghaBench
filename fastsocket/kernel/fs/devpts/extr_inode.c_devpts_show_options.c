
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_sb; } ;
struct seq_file {int dummy; } ;
struct pts_mount_opts {int ptmxmode; int mode; int gid; scalar_t__ setgid; int uid; scalar_t__ setuid; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; } ;


 struct pts_fs_info* DEVPTS_SB (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int devpts_show_options(struct seq_file *seq, struct vfsmount *vfs)
{
 struct pts_fs_info *fsi = DEVPTS_SB(vfs->mnt_sb);
 struct pts_mount_opts *opts = &fsi->mount_opts;

 if (opts->setuid)
  seq_printf(seq, ",uid=%u", opts->uid);
 if (opts->setgid)
  seq_printf(seq, ",gid=%u", opts->gid);
 seq_printf(seq, ",mode=%03o", opts->mode);




 return 0;
}
