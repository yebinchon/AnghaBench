
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sysfs_ops {int (* store ) (struct kobject*,int ,int ,size_t) ;} ;
struct TYPE_6__ {int attr; } ;
struct sysfs_dirent {TYPE_3__ s_attr; TYPE_2__* s_parent; } ;
struct sysfs_buffer {int page; struct sysfs_ops* ops; } ;
struct kobject {int dummy; } ;
struct dentry {struct sysfs_dirent* d_fsdata; } ;
struct TYPE_4__ {struct kobject* kobj; } ;
struct TYPE_5__ {TYPE_1__ s_dir; } ;


 int ENODEV ;
 int stub1 (struct kobject*,int ,int ,size_t) ;
 int sysfs_get_active_two (struct sysfs_dirent*) ;
 int sysfs_put_active_two (struct sysfs_dirent*) ;

__attribute__((used)) static int
flush_write_buffer(struct dentry * dentry, struct sysfs_buffer * buffer, size_t count)
{
 struct sysfs_dirent *attr_sd = dentry->d_fsdata;
 struct kobject *kobj = attr_sd->s_parent->s_dir.kobj;
 const struct sysfs_ops * ops = buffer->ops;
 int rc;


 if (!sysfs_get_active_two(attr_sd))
  return -ENODEV;

 rc = ops->store(kobj, attr_sd->s_attr.attr, buffer->page, count);

 sysfs_put_active_two(attr_sd);

 return rc;
}
