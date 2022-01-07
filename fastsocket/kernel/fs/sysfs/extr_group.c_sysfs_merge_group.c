
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {int sd; } ;
struct attribute_group {struct attribute** attrs; int name; } ;
struct attribute {int name; } ;


 int ENOENT ;
 int SYSFS_KOBJ_ATTR ;
 int sysfs_add_file (struct sysfs_dirent*,struct attribute* const,int ) ;
 struct sysfs_dirent* sysfs_get (int ) ;
 struct sysfs_dirent* sysfs_get_dirent (int ,int ) ;
 int sysfs_hash_and_remove (struct sysfs_dirent*,int ) ;
 int sysfs_put (struct sysfs_dirent*) ;

int sysfs_merge_group(struct kobject *kobj,
         const struct attribute_group *grp)
{
 struct sysfs_dirent *dir_sd;
 int error = 0;
 struct attribute *const *attr;
 int i;

 if (grp)
  dir_sd = sysfs_get_dirent(kobj->sd, grp->name);
 else
  dir_sd = sysfs_get(kobj->sd);
 if (!dir_sd)
  return -ENOENT;

 for ((i = 0, attr = grp->attrs); *attr && !error; (++i, ++attr))
  error = sysfs_add_file(dir_sd, *attr, SYSFS_KOBJ_ATTR);
 if (error) {
  while (--i >= 0)
   sysfs_hash_and_remove(dir_sd, (*--attr)->name);
 }
 sysfs_put(dir_sd);

 return error;
}
