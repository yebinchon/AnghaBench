
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int this10; scalar_t__ this28; scalar_t__ this54; int * this130; } ;
struct TYPE_5__ {TYPE_2__ eq; } ;
typedef TYPE_1__ vortex_t ;
typedef int u16 ;
typedef int s32 ;
typedef TYPE_2__ eqlzr_t ;


 int vortex_Eqlzr_SetAllBandsFromActiveCoeffSet (TYPE_1__*) ;

__attribute__((used)) static int
vortex_Eqlzr_SetAllBands(vortex_t * vortex, u16 gains[], s32 count)
{
 eqlzr_t *eq = &(vortex->eq);
 int i;

 if (((eq->this10) * 2 != count) || (eq->this28 == 0))
  return 1;

 for (i = 0; i < count; i++) {
  eq->this130[i] = gains[i];
 }

 if (eq->this54)
  return 0;
 return vortex_Eqlzr_SetAllBandsFromActiveCoeffSet(vortex);
}
