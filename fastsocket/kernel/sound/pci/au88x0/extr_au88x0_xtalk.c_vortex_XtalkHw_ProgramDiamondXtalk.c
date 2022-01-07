
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int asDiamondCoefsLeftEq ;
 int asDiamondCoefsLeftXt ;
 int asDiamondCoefsRightEq ;
 int sDiamondKLeftEq ;
 int sDiamondKLeftXt ;
 int sDiamondKRightEq ;
 int sDiamondShiftLeftEq ;
 int sDiamondShiftLeftXt ;
 int sDiamondShiftRightEq ;
 int vortex_XtalkHw_SetDelay (int *,int ,int ) ;
 int vortex_XtalkHw_SetLeftEQ (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetLeftXT (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetRightEQ (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetRightXT (int *,int ,int ,int ) ;
 int wDiamondLeftDelay ;
 int wDiamondRightDelay ;

__attribute__((used)) static void vortex_XtalkHw_ProgramDiamondXtalk(vortex_t * vortex)
{


 vortex_XtalkHw_SetLeftEQ(vortex, sDiamondKLeftEq,
     sDiamondShiftLeftEq, asDiamondCoefsLeftEq);
 vortex_XtalkHw_SetRightEQ(vortex, sDiamondKRightEq,
      sDiamondShiftRightEq, asDiamondCoefsRightEq);
 vortex_XtalkHw_SetLeftXT(vortex, sDiamondKLeftXt,
     sDiamondShiftLeftXt, asDiamondCoefsLeftXt);
 vortex_XtalkHw_SetRightXT(vortex, sDiamondKLeftXt,
      sDiamondShiftLeftXt, asDiamondCoefsLeftXt);

 vortex_XtalkHw_SetDelay(vortex, wDiamondRightDelay, wDiamondLeftDelay);
}
