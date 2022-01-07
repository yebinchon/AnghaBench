
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int * s_bdev; TYPE_4__* s_op; } ;
struct TYPE_7__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_8__ {int * freeze_fs; } ;
struct TYPE_6__ {TYPE_1__* d_inode; } ;
struct TYPE_5__ {struct super_block* i_sb; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_ERR (struct super_block*) ;
 int PTR_ERR (struct super_block*) ;
 int capable (int ) ;
 struct super_block* freeze_bdev (int *) ;

__attribute__((used)) static int ioctl_fsfreeze(struct file *filp)
{
 struct super_block *sb = filp->f_path.dentry->d_inode->i_sb;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;


 if (sb->s_op->freeze_fs == ((void*)0))
  return -EOPNOTSUPP;


 if (sb->s_bdev == ((void*)0))
  return -EINVAL;


 sb = freeze_bdev(sb->s_bdev);
 if (IS_ERR(sb))
  return PTR_ERR(sb);
 return 0;
}
