
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int private_data; } ;


 int dput (int ) ;

int dcache_dir_close(struct inode *inode, struct file *file)
{
 dput(file->private_data);
 return 0;
}
