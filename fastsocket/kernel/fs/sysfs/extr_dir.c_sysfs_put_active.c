
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int completion; } ;
struct sysfs_dirent {TYPE_1__ u; int s_active; } ;


 int SD_DEACTIVATED_BIAS ;
 int atomic_dec_return (int *) ;
 int complete (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void sysfs_put_active(struct sysfs_dirent *sd)
{
 int v;

 if (unlikely(!sd))
  return;

 v = atomic_dec_return(&sd->s_active);
 if (likely(v != SD_DEACTIVATED_BIAS))
  return;




 complete(sd->u.completion);
}
