
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_dirent {int s_type; } ;


 int CONFIGFS_USET_CREATING ;
 int configfs_dirent_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int configfs_dirent_is_ready(struct configfs_dirent *sd)
{
 int ret;

 spin_lock(&configfs_dirent_lock);
 ret = !(sd->s_type & CONFIGFS_USET_CREATING);
 spin_unlock(&configfs_dirent_lock);

 return ret;
}
