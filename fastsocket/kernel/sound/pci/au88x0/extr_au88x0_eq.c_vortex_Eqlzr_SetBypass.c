
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int this0c; int this14_array; int this08; scalar_t__ this28; } ;
struct TYPE_9__ {TYPE_2__ eq; } ;
typedef TYPE_1__ vortex_t ;
typedef scalar_t__ u32 ;
typedef TYPE_2__ eqlzr_t ;


 int vortex_EqHw_SetBypassGain (TYPE_1__*,int ,int ) ;
 int vortex_EqHw_SetLeftGainsTarget (TYPE_1__*,int ) ;
 int vortex_EqHw_SetRightGainsTarget (TYPE_1__*,int ) ;
 int vortex_Eqlzr_ProgramA3dBypassGain (TYPE_1__*) ;
 int vortex_Eqlzr_SetAllBandsFromActiveCoeffSet (TYPE_1__*) ;

__attribute__((used)) static void vortex_Eqlzr_SetBypass(vortex_t * vortex, u32 bp)
{
 eqlzr_t *eq = &(vortex->eq);

 if ((eq->this28) && (bp == 0)) {

  vortex_Eqlzr_SetAllBandsFromActiveCoeffSet(vortex);
  vortex_EqHw_SetBypassGain(vortex, eq->this08, eq->this08);
 } else {

  vortex_EqHw_SetLeftGainsTarget(vortex, eq->this14_array);
  vortex_EqHw_SetRightGainsTarget(vortex, eq->this14_array);
  vortex_EqHw_SetBypassGain(vortex, eq->this0c, eq->this0c);
 }
 vortex_Eqlzr_ProgramA3dBypassGain(vortex);
}
