
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gfp_t ;
struct TYPE_2__ {int lockdep_reclaim_gfp; } ;


 TYPE_1__* current ;

void lockdep_set_current_reclaim_state(gfp_t gfp_mask)
{
 current->lockdep_reclaim_gfp = gfp_mask;
}
