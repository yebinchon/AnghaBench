
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute_group {struct attribute** attrs; } ;
struct attribute {int name; } ;


 int sysfs_hash_and_remove (struct sysfs_dirent*,int ) ;

__attribute__((used)) static void remove_files(struct sysfs_dirent *dir_sd, struct kobject *kobj,
    const struct attribute_group *grp)
{
 struct attribute *const* attr;
 int i;

 for (i = 0, attr = grp->attrs; *attr; i++, attr++)
  sysfs_hash_and_remove(dir_sd, (*attr)->name);
}
