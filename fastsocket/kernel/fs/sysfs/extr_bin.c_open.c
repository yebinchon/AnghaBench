
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int buffers; struct bin_attribute* bin_attr; } ;
struct sysfs_dirent {TYPE_3__ s_bin_attr; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {int f_mode; struct bin_buffer* private_data; TYPE_2__ f_path; } ;
struct bin_buffer {int list; struct file* file; int mutex; int buffer; } ;
struct bin_attribute {scalar_t__ mmap; scalar_t__ read; scalar_t__ write; } ;
struct TYPE_4__ {struct sysfs_dirent* d_fsdata; } ;


 int EACCES ;
 int ENODEV ;
 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int hlist_add_head (int *,int *) ;
 int kfree (struct bin_buffer*) ;
 int kmalloc (int ,int ) ;
 struct bin_buffer* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sysfs_bin_lock ;
 int sysfs_get_active_two (struct sysfs_dirent*) ;
 int sysfs_put_active_two (struct sysfs_dirent*) ;

__attribute__((used)) static int open(struct inode * inode, struct file * file)
{
 struct sysfs_dirent *attr_sd = file->f_path.dentry->d_fsdata;
 struct bin_attribute *attr = attr_sd->s_bin_attr.bin_attr;
 struct bin_buffer *bb = ((void*)0);
 int error;


 if (!sysfs_get_active_two(attr_sd))
  return -ENODEV;

 error = -EACCES;
 if ((file->f_mode & FMODE_WRITE) && !(attr->write || attr->mmap))
  goto err_out;
 if ((file->f_mode & FMODE_READ) && !(attr->read || attr->mmap))
  goto err_out;

 error = -ENOMEM;
 bb = kzalloc(sizeof(*bb), GFP_KERNEL);
 if (!bb)
  goto err_out;

 bb->buffer = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!bb->buffer)
  goto err_out;

 mutex_init(&bb->mutex);
 bb->file = file;
 file->private_data = bb;

 mutex_lock(&sysfs_bin_lock);
 hlist_add_head(&bb->list, &attr_sd->s_bin_attr.buffers);
 mutex_unlock(&sysfs_bin_lock);


 sysfs_put_active_two(attr_sd);
 return 0;

 err_out:
 sysfs_put_active_two(attr_sd);
 kfree(bb);
 return error;
}
