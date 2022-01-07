
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_hibernation_ops {scalar_t__ restore_cleanup; scalar_t__ pre_restore; scalar_t__ enter; scalar_t__ finish; scalar_t__ prepare; scalar_t__ pre_snapshot; scalar_t__ end; scalar_t__ begin; } ;


 scalar_t__ HIBERNATION_PLATFORM ;
 scalar_t__ HIBERNATION_SHUTDOWN ;
 int WARN_ON (int) ;
 scalar_t__ hibernation_mode ;
 struct platform_hibernation_ops* hibernation_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_mutex ;

void hibernation_set_ops(struct platform_hibernation_ops *ops)
{
 if (ops && !(ops->begin && ops->end && ops->pre_snapshot
     && ops->prepare && ops->finish && ops->enter && ops->pre_restore
     && ops->restore_cleanup)) {
  WARN_ON(1);
  return;
 }
 mutex_lock(&pm_mutex);
 hibernation_ops = ops;
 if (ops)
  hibernation_mode = HIBERNATION_PLATFORM;
 else if (hibernation_mode == HIBERNATION_PLATFORM)
  hibernation_mode = HIBERNATION_SHUTDOWN;

 mutex_unlock(&pm_mutex);
}
