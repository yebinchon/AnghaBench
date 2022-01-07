
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sysfs_dirent* sysfs_find_dirent (struct sysfs_dirent*,unsigned char const*) ;
 int sysfs_get (struct sysfs_dirent*) ;
 int sysfs_mutex ;

struct sysfs_dirent *sysfs_get_dirent(struct sysfs_dirent *parent_sd,
          const unsigned char *name)
{
 struct sysfs_dirent *sd;

 mutex_lock(&sysfs_mutex);
 sd = sysfs_find_dirent(parent_sd, name);
 sysfs_get(sd);
 mutex_unlock(&sysfs_mutex);

 return sd;
}
