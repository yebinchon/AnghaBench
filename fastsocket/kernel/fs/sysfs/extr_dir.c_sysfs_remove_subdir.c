
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;


 int remove_dir (struct sysfs_dirent*) ;

void sysfs_remove_subdir(struct sysfs_dirent *sd)
{
 remove_dir(sd);
}
