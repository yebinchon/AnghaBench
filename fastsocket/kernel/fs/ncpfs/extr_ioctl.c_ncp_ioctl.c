
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int mnt; } ;
struct file {TYPE_1__ f_path; } ;


 int EACCES ;
 int __ncp_ioctl (struct inode*,struct file*,unsigned int,unsigned long) ;
 int mnt_drop_write (int ) ;
 scalar_t__ mnt_want_write (int ) ;
 scalar_t__ ncp_ioctl_need_write (unsigned int) ;

int ncp_ioctl(struct inode *inode, struct file *filp,
       unsigned int cmd, unsigned long arg)
{
 int ret;

 if (ncp_ioctl_need_write(cmd)) {






  if (mnt_want_write(filp->f_path.mnt))
   return -EACCES;
 }
 ret = __ncp_ioctl(inode, filp, cmd, arg);
 if (ncp_ioctl_need_write(cmd))
  mnt_drop_write(filp->f_path.mnt);
 return ret;
}
