
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {struct file* vm_file; } ;
struct sysfs_dirent {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; struct bin_buffer* private_data; } ;
struct bin_buffer {TYPE_3__* vm_ops; } ;
struct TYPE_6__ {int (* close ) (struct vm_area_struct*) ;} ;
struct TYPE_4__ {struct sysfs_dirent* d_fsdata; } ;


 int stub1 (struct vm_area_struct*) ;
 int sysfs_get_active_two (struct sysfs_dirent*) ;
 int sysfs_put_active_two (struct sysfs_dirent*) ;

__attribute__((used)) static void bin_vma_close(struct vm_area_struct *vma)
{
 struct file *file = vma->vm_file;
 struct bin_buffer *bb = file->private_data;
 struct sysfs_dirent *attr_sd = file->f_path.dentry->d_fsdata;

 if (!bb->vm_ops || !bb->vm_ops->close)
  return;

 if (!sysfs_get_active_two(attr_sd))
  return;

 bb->vm_ops->close(vma);

 sysfs_put_active_two(attr_sd);
}
