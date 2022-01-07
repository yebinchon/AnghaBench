
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lockdep_reclaim_gfp; } ;


 TYPE_1__* current ;

void lockdep_clear_current_reclaim_state(void)
{
 current->lockdep_reclaim_gfp = 0;
}
