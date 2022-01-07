
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {struct sysfs_dirent* s_parent; } ;


 int sysfs_put_active (struct sysfs_dirent*) ;

void sysfs_put_active_two(struct sysfs_dirent *sd)
{
 if (sd) {
  sysfs_put_active(sd);
  sysfs_put_active(sd->s_parent);
 }
}
