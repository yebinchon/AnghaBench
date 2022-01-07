
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {int sd; } ;
struct attribute {int dummy; } ;


 int ENOENT ;
 int SYSFS_KOBJ_ATTR ;
 int sysfs_add_file (struct sysfs_dirent*,struct attribute const*,int ) ;
 struct sysfs_dirent* sysfs_get (int ) ;
 struct sysfs_dirent* sysfs_get_dirent (int ,char const*) ;
 int sysfs_put (struct sysfs_dirent*) ;

int sysfs_add_file_to_group(struct kobject *kobj,
  const struct attribute *attr, const char *group)
{
 struct sysfs_dirent *dir_sd;
 int error;

 if (group)
  dir_sd = sysfs_get_dirent(kobj->sd, group);
 else
  dir_sd = sysfs_get(kobj->sd);

 if (!dir_sd)
  return -ENOENT;

 error = sysfs_add_file(dir_sd, attr, SYSFS_KOBJ_ATTR);
 sysfs_put(dir_sd);

 return error;
}
