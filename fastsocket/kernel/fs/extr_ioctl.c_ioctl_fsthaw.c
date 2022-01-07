
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int * s_bdev; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct super_block* i_sb; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int capable (int ) ;
 int thaw_bdev (int *,struct super_block*) ;

__attribute__((used)) static int ioctl_fsthaw(struct file *filp)
{
 struct super_block *sb = filp->f_path.dentry->d_inode->i_sb;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;


 if (sb->s_bdev == ((void*)0))
  return -EINVAL;


 return thaw_bdev(sb->s_bdev, sb);
}
