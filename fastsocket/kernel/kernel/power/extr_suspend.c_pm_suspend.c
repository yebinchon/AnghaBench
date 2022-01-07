
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ suspend_state_t ;


 int EINVAL ;
 scalar_t__ PM_SUSPEND_MAX ;
 scalar_t__ PM_SUSPEND_ON ;
 int enter_state (scalar_t__) ;

int pm_suspend(suspend_state_t state)
{
 if (state > PM_SUSPEND_ON && state <= PM_SUSPEND_MAX)
  return enter_state(state);
 return -EINVAL;
}
