
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_4__ {struct vfsmount* mnt; } ;
struct file {TYPE_2__ f_path; } ;
struct autofs_sb_info {int sb; } ;
struct TYPE_3__ {int how; } ;
struct autofs_dev_ioctl {TYPE_1__ expire; } ;


 int autofs4_do_expire_multi (int ,struct vfsmount*,struct autofs_sb_info*,int) ;

__attribute__((used)) static int autofs_dev_ioctl_expire(struct file *fp,
       struct autofs_sb_info *sbi,
       struct autofs_dev_ioctl *param)
{
 struct vfsmount *mnt;
 int how;

 how = param->expire.how;
 mnt = fp->f_path.mnt;

 return autofs4_do_expire_multi(sbi->sb, mnt, sbi, how);
}
