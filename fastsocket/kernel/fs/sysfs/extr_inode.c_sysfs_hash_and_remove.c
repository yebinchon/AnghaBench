
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct sysfs_addrm_cxt {int dummy; } ;


 int ENOENT ;
 int sysfs_addrm_finish (struct sysfs_addrm_cxt*) ;
 int sysfs_addrm_start (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ;
 struct sysfs_dirent* sysfs_find_dirent (struct sysfs_dirent*,char const*) ;
 int sysfs_remove_one (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ;

int sysfs_hash_and_remove(struct sysfs_dirent *dir_sd, const char *name)
{
 struct sysfs_addrm_cxt acxt;
 struct sysfs_dirent *sd;

 if (!dir_sd)
  return -ENOENT;

 sysfs_addrm_start(&acxt, dir_sd);

 sd = sysfs_find_dirent(dir_sd, name);
 if (sd)
  sysfs_remove_one(&acxt, sd);

 sysfs_addrm_finish(&acxt);

 if (sd)
  return 0;
 else
  return -ENOENT;
}
