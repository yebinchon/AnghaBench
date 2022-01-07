
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {struct sysfs_dirent* sd; } ;


 int __sysfs_remove_dir (struct sysfs_dirent*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sysfs_assoc_lock ;

void sysfs_remove_dir(struct kobject * kobj)
{
 struct sysfs_dirent *sd = kobj->sd;

 spin_lock(&sysfs_assoc_lock);
 kobj->sd = ((void*)0);
 spin_unlock(&sysfs_assoc_lock);

 __sysfs_remove_dir(sd);
}
