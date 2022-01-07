
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {int sd; } ;
struct attribute {int name; } ;


 struct sysfs_dirent* sysfs_get (int ) ;
 struct sysfs_dirent* sysfs_get_dirent (int ,char const*) ;
 int sysfs_hash_and_remove (struct sysfs_dirent*,int ) ;
 int sysfs_put (struct sysfs_dirent*) ;

void sysfs_remove_file_from_group(struct kobject *kobj,
  const struct attribute *attr, const char *group)
{
 struct sysfs_dirent *dir_sd;

 if (group)
  dir_sd = sysfs_get_dirent(kobj->sd, group);
 else
  dir_sd = sysfs_get(kobj->sd);
 if (dir_sd) {
  sysfs_hash_and_remove(dir_sd, attr->name);
  sysfs_put(dir_sd);
 }
}
