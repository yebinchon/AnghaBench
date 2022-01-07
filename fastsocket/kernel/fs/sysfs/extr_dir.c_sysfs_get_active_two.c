
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {struct sysfs_dirent* s_parent; } ;


 int sysfs_get_active (struct sysfs_dirent*) ;
 int sysfs_put_active (struct sysfs_dirent*) ;
 scalar_t__ unlikely (int) ;

struct sysfs_dirent *sysfs_get_active_two(struct sysfs_dirent *sd)
{
 if (sd) {
  if (sd->s_parent && unlikely(!sysfs_get_active(sd->s_parent)))
   return ((void*)0);
  if (unlikely(!sysfs_get_active(sd))) {
   sysfs_put_active(sd->s_parent);
   return ((void*)0);
  }
 }
 return sd;
}
