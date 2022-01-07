
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_ops; struct file* vm_file; } ;
struct TYPE_8__ {struct bin_attribute* bin_attr; } ;
struct sysfs_dirent {TYPE_5__* s_parent; TYPE_3__ s_bin_attr; } ;
struct kobject {int dummy; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; struct bin_buffer* private_data; } ;
struct bin_buffer {int mmapped; scalar_t__ vm_ops; int mutex; } ;
struct bin_attribute {int (* mmap ) (struct file*,struct kobject*,struct bin_attribute*,struct vm_area_struct*) ;} ;
struct TYPE_9__ {struct kobject* kobj; } ;
struct TYPE_10__ {TYPE_4__ s_dir; } ;
struct TYPE_6__ {struct sysfs_dirent* d_fsdata; } ;


 int EINVAL ;
 int ENODEV ;
 int bin_vm_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct file*,struct kobject*,struct bin_attribute*,struct vm_area_struct*) ;
 int sysfs_get_active_two (struct sysfs_dirent*) ;
 int sysfs_put_active_two (struct sysfs_dirent*) ;

__attribute__((used)) static int mmap(struct file *file, struct vm_area_struct *vma)
{
 struct bin_buffer *bb = file->private_data;
 struct sysfs_dirent *attr_sd = file->f_path.dentry->d_fsdata;
 struct bin_attribute *attr = attr_sd->s_bin_attr.bin_attr;
 struct kobject *kobj = attr_sd->s_parent->s_dir.kobj;
 int rc;

 mutex_lock(&bb->mutex);


 rc = -ENODEV;
 if (!sysfs_get_active_two(attr_sd))
  goto out_unlock;

 rc = -EINVAL;
 if (!attr->mmap)
  goto out_put;

 rc = attr->mmap(file, kobj, attr, vma);
 if (rc)
  goto out_put;






 if (vma->vm_file != file)
  goto out_put;

 rc = -EINVAL;
 if (bb->mmapped && bb->vm_ops != vma->vm_ops)
  goto out_put;

 rc = 0;
 bb->mmapped = 1;
 bb->vm_ops = vma->vm_ops;
 vma->vm_ops = &bin_vm_ops;
out_put:
 sysfs_put_active_two(attr_sd);
out_unlock:
 mutex_unlock(&bb->mutex);

 return rc;
}
