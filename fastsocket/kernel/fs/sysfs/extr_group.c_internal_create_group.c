
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {struct sysfs_dirent* sd; } ;
struct attribute_group {scalar_t__ name; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int create_files (struct sysfs_dirent*,struct kobject*,struct attribute_group const*,int) ;
 int sysfs_create_subdir (struct kobject*,scalar_t__,struct sysfs_dirent**) ;
 int sysfs_get (struct sysfs_dirent*) ;
 int sysfs_put (struct sysfs_dirent*) ;
 int sysfs_remove_subdir (struct sysfs_dirent*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int internal_create_group(struct kobject *kobj, int update,
     const struct attribute_group *grp)
{
 struct sysfs_dirent *sd;
 int error;

 BUG_ON(!kobj || (!update && !kobj->sd));


 if (unlikely(update && !kobj->sd))
  return -EINVAL;

 if (grp->name) {
  error = sysfs_create_subdir(kobj, grp->name, &sd);
  if (error)
   return error;
 } else
  sd = kobj->sd;
 sysfs_get(sd);
 error = create_files(sd, kobj, grp, update);
 if (error) {
  if (grp->name)
   sysfs_remove_subdir(sd);
 }
 sysfs_put(sd);
 return error;
}
