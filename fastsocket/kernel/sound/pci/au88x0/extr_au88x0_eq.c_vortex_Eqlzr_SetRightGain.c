
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ this28; size_t* this130; size_t this10; scalar_t__ this54; } ;
struct TYPE_5__ {TYPE_2__ eq; } ;
typedef TYPE_1__ vortex_t ;
typedef size_t u16 ;
typedef TYPE_2__ eqlzr_t ;


 int vortex_EqHw_SetRightGainsSingleTarget (TYPE_1__*,size_t,size_t) ;

__attribute__((used)) static void vortex_Eqlzr_SetRightGain(vortex_t * vortex, u16 index, u16 gain)
{
 eqlzr_t *eq = &(vortex->eq);

 if (eq->this28 == 0)
  return;

 eq->this130[index + eq->this10] = gain;
 if (eq->this54)
  return;

 vortex_EqHw_SetRightGainsSingleTarget(vortex, index, gain);
}
