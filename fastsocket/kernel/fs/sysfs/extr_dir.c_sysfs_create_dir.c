
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysfs_dirent {int dummy; } ;
struct kobject {struct sysfs_dirent* sd; TYPE_1__* parent; } ;
struct TYPE_2__ {struct sysfs_dirent* sd; } ;


 int BUG_ON (int) ;
 int create_dir (struct kobject*,struct sysfs_dirent*,int ,struct sysfs_dirent**) ;
 int kobject_name (struct kobject*) ;
 struct sysfs_dirent sysfs_root ;

int sysfs_create_dir(struct kobject * kobj)
{
 struct sysfs_dirent *parent_sd, *sd;
 int error = 0;

 BUG_ON(!kobj);

 if (kobj->parent)
  parent_sd = kobj->parent->sd;
 else
  parent_sd = &sysfs_root;

 error = create_dir(kobj, parent_sd, kobject_name(kobj), &sd);
 if (!error)
  kobj->sd = sd;
 return error;
}
