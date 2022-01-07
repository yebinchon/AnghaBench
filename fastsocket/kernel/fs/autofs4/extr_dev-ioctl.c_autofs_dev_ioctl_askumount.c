
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct autofs_sb_info {int dummy; } ;
struct TYPE_4__ {int may_umount; } ;
struct autofs_dev_ioctl {TYPE_2__ askumount; } ;


 scalar_t__ may_umount (int ) ;

__attribute__((used)) static int autofs_dev_ioctl_askumount(struct file *fp,
          struct autofs_sb_info *sbi,
          struct autofs_dev_ioctl *param)
{
 param->askumount.may_umount = 0;
 if (may_umount(fp->f_path.mnt))
  param->askumount.may_umount = 1;
 return 0;
}
