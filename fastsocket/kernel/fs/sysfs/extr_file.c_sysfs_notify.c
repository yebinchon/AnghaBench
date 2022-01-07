
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct kobject {struct sysfs_dirent* sd; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sysfs_dirent* sysfs_find_dirent (struct sysfs_dirent*,char const*) ;
 int sysfs_mutex ;
 int sysfs_notify_dirent (struct sysfs_dirent*) ;

void sysfs_notify(struct kobject *k, const char *dir, const char *attr)
{
 struct sysfs_dirent *sd = k->sd;

 mutex_lock(&sysfs_mutex);

 if (sd && dir)
  sd = sysfs_find_dirent(sd, dir);
 if (sd && attr)
  sd = sysfs_find_dirent(sd, attr);
 if (sd)
  sysfs_notify_dirent(sd);

 mutex_unlock(&sysfs_mutex);
}
