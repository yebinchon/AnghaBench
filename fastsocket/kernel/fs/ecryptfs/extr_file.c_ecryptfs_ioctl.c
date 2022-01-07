
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_2__ {int (* ioctl ) (int ,struct file*,unsigned int,unsigned long) ;} ;


 int ENOTTY ;
 struct file* ecryptfs_file_to_lower (struct file*) ;
 scalar_t__ ecryptfs_file_to_private (struct file*) ;
 int ecryptfs_inode_to_lower (struct inode*) ;
 int stub1 (int ,struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static int
ecryptfs_ioctl(struct inode *inode, struct file *file, unsigned int cmd,
        unsigned long arg)
{
 int rc = 0;
 struct file *lower_file = ((void*)0);

 if (ecryptfs_file_to_private(file))
  lower_file = ecryptfs_file_to_lower(file);
 if (lower_file && lower_file->f_op && lower_file->f_op->ioctl)
  rc = lower_file->f_op->ioctl(ecryptfs_inode_to_lower(inode),
          lower_file, cmd, arg);
 else
  rc = -ENOTTY;
 return rc;
}
