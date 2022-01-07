
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct TYPE_2__ {void* attr; } ;
struct sysfs_dirent {TYPE_1__ s_attr; } ;
struct sysfs_addrm_cxt {int dummy; } ;
struct attribute {int name; } ;
typedef int mode_t ;


 int ENOMEM ;
 int S_IALLUGO ;
 int S_IFREG ;
 int sysfs_add_one (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ;
 int sysfs_addrm_finish (struct sysfs_addrm_cxt*) ;
 int sysfs_addrm_start (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ;
 struct sysfs_dirent* sysfs_new_dirent (int ,int,int) ;
 int sysfs_put (struct sysfs_dirent*) ;

int sysfs_add_file_mode(struct sysfs_dirent *dir_sd,
   const struct attribute *attr, int type, mode_t amode)
{
 umode_t mode = (amode & S_IALLUGO) | S_IFREG;
 struct sysfs_addrm_cxt acxt;
 struct sysfs_dirent *sd;
 int rc;

 sd = sysfs_new_dirent(attr->name, mode, type);
 if (!sd)
  return -ENOMEM;
 sd->s_attr.attr = (void *)attr;

 sysfs_addrm_start(&acxt, dir_sd);
 rc = sysfs_add_one(&acxt, sd);
 sysfs_addrm_finish(&acxt);

 if (rc)
  sysfs_put(sd);

 return rc;
}
