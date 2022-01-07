
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int asEqCoefsPipes ;
 int eq_gains_current ;
 int vortex_EqHw_SetLeftCoefs (int *,int ) ;
 int vortex_EqHw_SetLeftGainsCurrent (int *,int ) ;
 int vortex_EqHw_SetLeftGainsTarget (int *,int ) ;
 int vortex_EqHw_SetRightCoefs (int *,int ) ;
 int vortex_EqHw_SetRightGainsCurrent (int *,int ) ;
 int vortex_EqHw_SetRightGainsTarget (int *,int ) ;
 int vortex_EqHw_SetTimeConsts (int *,int ,int ) ;

__attribute__((used)) static void vortex_EqHw_ProgramPipe(vortex_t * vortex)
{
 vortex_EqHw_SetTimeConsts(vortex, 0, 0);

 vortex_EqHw_SetLeftCoefs(vortex, asEqCoefsPipes);
 vortex_EqHw_SetRightCoefs(vortex, asEqCoefsPipes);

 vortex_EqHw_SetLeftGainsCurrent(vortex, eq_gains_current);
 vortex_EqHw_SetRightGainsCurrent(vortex, eq_gains_current);
 vortex_EqHw_SetLeftGainsTarget(vortex, eq_gains_current);
 vortex_EqHw_SetRightGainsTarget(vortex, eq_gains_current);
}
