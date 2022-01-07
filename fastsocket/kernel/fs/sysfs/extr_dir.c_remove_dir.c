
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysfs_dirent {int s_parent; } ;
struct sysfs_addrm_cxt {int dummy; } ;


 int sysfs_addrm_finish (struct sysfs_addrm_cxt*) ;
 int sysfs_addrm_start (struct sysfs_addrm_cxt*,int ) ;
 int sysfs_remove_one (struct sysfs_addrm_cxt*,struct sysfs_dirent*) ;

__attribute__((used)) static void remove_dir(struct sysfs_dirent *sd)
{
 struct sysfs_addrm_cxt acxt;

 sysfs_addrm_start(&acxt, sd->s_parent);
 sysfs_remove_one(&acxt, sd);
 sysfs_addrm_finish(&acxt);
}
