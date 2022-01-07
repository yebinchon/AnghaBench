
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int dummy; } ;
struct attribute {int mode; } ;


 int sysfs_add_file_mode (struct sysfs_dirent*,struct attribute const*,int,int ) ;

int sysfs_add_file(struct sysfs_dirent *dir_sd, const struct attribute *attr,
     int type)
{
 return sysfs_add_file_mode(dir_sd, attr, type, attr->mode);
}
