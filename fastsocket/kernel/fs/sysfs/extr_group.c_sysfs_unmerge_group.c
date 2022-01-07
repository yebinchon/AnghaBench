
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {int sd; } ;
struct attribute_group {struct attribute** attrs; int name; } ;
struct attribute {int name; } ;


 struct sysfs_dirent* sysfs_get (int ) ;
 struct sysfs_dirent* sysfs_get_dirent (int ,int ) ;
 int sysfs_hash_and_remove (struct sysfs_dirent*,int ) ;
 int sysfs_put (struct sysfs_dirent*) ;

void sysfs_unmerge_group(struct kobject *kobj,
         const struct attribute_group *grp)
{
 struct sysfs_dirent *dir_sd;
 struct attribute *const *attr;

 if (grp)
  dir_sd = sysfs_get_dirent(kobj->sd, grp->name);
 else
  dir_sd = sysfs_get(kobj->sd);
 if (dir_sd) {
  for (attr = grp->attrs; *attr; ++attr)
   sysfs_hash_and_remove(dir_sd, (*attr)->name);
  sysfs_put(dir_sd);
 }
}
