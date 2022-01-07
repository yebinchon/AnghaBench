
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sysfs_dirent {int dummy; } ;
struct sysfs_buffer {scalar_t__ page; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {struct sysfs_buffer* private_data; TYPE_2__ f_path; } ;
struct TYPE_3__ {struct sysfs_dirent* d_fsdata; } ;


 int free_page (unsigned long) ;
 int kfree (struct sysfs_buffer*) ;
 int sysfs_put_open_dirent (struct sysfs_dirent*,struct sysfs_buffer*) ;

__attribute__((used)) static int sysfs_release(struct inode *inode, struct file *filp)
{
 struct sysfs_dirent *sd = filp->f_path.dentry->d_fsdata;
 struct sysfs_buffer *buffer = filp->private_data;

 sysfs_put_open_dirent(sd, buffer);

 if (buffer->page)
  free_page((unsigned long)buffer->page);
 kfree(buffer);

 return 0;
}
