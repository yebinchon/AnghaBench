
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int put_nfs_open_dir_context (int ) ;

__attribute__((used)) static int
nfs_closedir(struct inode *inode, struct file *filp)
{
 put_nfs_open_dir_context(filp->private_data);
 return 0;
}
