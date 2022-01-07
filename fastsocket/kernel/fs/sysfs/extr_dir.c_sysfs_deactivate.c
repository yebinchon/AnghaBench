
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* completion; } ;
struct sysfs_dirent {int s_flags; int s_active; TYPE_1__ u; } ;


 int BUG_ON (int) ;
 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int SD_DEACTIVATED_BIAS ;
 int SYSFS_FLAG_REMOVED ;
 int atomic_add_return (int,int *) ;
 int wait ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void sysfs_deactivate(struct sysfs_dirent *sd)
{
 DECLARE_COMPLETION_ONSTACK(wait);
 int v;

 BUG_ON(!(sd->s_flags & SYSFS_FLAG_REMOVED));
 sd->u.completion = (void *)&wait;




 v = atomic_add_return(SD_DEACTIVATED_BIAS, &sd->s_active);

 if (v != SD_DEACTIVATED_BIAS)
  wait_for_completion(&wait);
}
