
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int nfs_file_clear_open_context (struct file*) ;

int nfs_release(struct inode *inode, struct file *filp)
{
 nfs_file_clear_open_context(filp);
 return 0;
}
