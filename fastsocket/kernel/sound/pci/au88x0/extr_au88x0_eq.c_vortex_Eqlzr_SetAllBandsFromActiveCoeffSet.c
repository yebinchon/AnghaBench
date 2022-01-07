
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t this10; int * this130; } ;
struct TYPE_6__ {TYPE_2__ eq; } ;
typedef TYPE_1__ vortex_t ;
typedef TYPE_2__ eqlzr_t ;


 int vortex_EqHw_SetLeftGainsTarget (TYPE_1__*,int *) ;
 int vortex_EqHw_SetRightGainsTarget (TYPE_1__*,int *) ;

__attribute__((used)) static int vortex_Eqlzr_SetAllBandsFromActiveCoeffSet(vortex_t * vortex)
{
 eqlzr_t *eq = &(vortex->eq);

 vortex_EqHw_SetLeftGainsTarget(vortex, eq->this130);
 vortex_EqHw_SetRightGainsTarget(vortex, &(eq->this130[eq->this10]));

 return 0;
}
