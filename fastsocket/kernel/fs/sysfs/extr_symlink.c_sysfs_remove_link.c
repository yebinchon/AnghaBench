
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {struct sysfs_dirent* sd; } ;


 int sysfs_hash_and_remove (struct sysfs_dirent*,char const*) ;
 struct sysfs_dirent sysfs_root ;

void sysfs_remove_link(struct kobject * kobj, const char * name)
{
 struct sysfs_dirent *parent_sd = ((void*)0);

 if (!kobj)
  parent_sd = &sysfs_root;
 else
  parent_sd = kobj->sd;

 sysfs_hash_and_remove(parent_sd, name);
}
