
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {int sd; } ;


 int create_dir (struct kobject*,int ,char const*,struct sysfs_dirent**) ;

int sysfs_create_subdir(struct kobject *kobj, const char *name,
   struct sysfs_dirent **p_sd)
{
 return create_dir(kobj, kobj->sd, name, p_sd);
}
