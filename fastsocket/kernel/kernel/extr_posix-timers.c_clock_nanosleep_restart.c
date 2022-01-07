
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct restart_block {TYPE_1__ nanosleep; } ;
struct k_clock {long (* nsleep_restart ) (struct restart_block*) ;} ;
typedef int clockid_t ;


 long EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct k_clock* clockid_to_kclock (int ) ;
 long stub1 (struct restart_block*) ;

long clock_nanosleep_restart(struct restart_block *restart_block)
{
 clockid_t which_clock = restart_block->nanosleep.index;
 struct k_clock *kc = clockid_to_kclock(which_clock);

 if (WARN_ON_ONCE(!kc || !kc->nsleep_restart))
  return -EINVAL;

 return kc->nsleep_restart(restart_block);
}
