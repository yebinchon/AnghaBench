
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;


 int __sysfs_put (struct sysfs_dirent*) ;

void sysfs_put(struct sysfs_dirent *sd)
{
 __sysfs_put(sd);
}
