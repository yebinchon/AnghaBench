
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct configfs_subsystem {int dummy; } ;
struct configfs_dirent {int s_dependent_count; } ;
struct config_item {TYPE_1__* ci_dentry; } ;
struct TYPE_2__ {struct configfs_dirent* d_fsdata; } ;


 int BUG_ON (int) ;
 int configfs_dirent_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void configfs_undepend_item(struct configfs_subsystem *subsys,
       struct config_item *target)
{
 struct configfs_dirent *sd;





 spin_lock(&configfs_dirent_lock);

 sd = target->ci_dentry->d_fsdata;
 BUG_ON(sd->s_dependent_count < 1);

 sd->s_dependent_count -= 1;





 spin_unlock(&configfs_dirent_lock);
}
