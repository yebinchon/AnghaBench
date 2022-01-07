
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct autofs_sb_info {int dummy; } ;
struct autofs_dev_ioctl {int ioctlfd; } ;


 int sys_close (int ) ;

__attribute__((used)) static int autofs_dev_ioctl_closemount(struct file *fp,
           struct autofs_sb_info *sbi,
           struct autofs_dev_ioctl *param)
{
 return sys_close(param->ioctlfd);
}
