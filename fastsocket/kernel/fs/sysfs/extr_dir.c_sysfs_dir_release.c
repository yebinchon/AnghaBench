
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int sysfs_put (int ) ;

__attribute__((used)) static int sysfs_dir_release(struct inode *inode, struct file *filp)
{
 sysfs_put(filp->private_data);
 return 0;
}
