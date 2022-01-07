
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int asXtalkWideCoefsLeftEq ;
 int asXtalkWideCoefsLeftXt ;
 int asXtalkWideCoefsRightEq ;
 int sXtalkWideKLeftEq ;
 int sXtalkWideKLeftXt ;
 int sXtalkWideKRightEq ;
 int sXtalkWideShiftLeftEq ;
 int sXtalkWideShiftLeftXt ;
 int sXtalkWideShiftRightEq ;
 int vortex_XtalkHw_SetDelay (int *,int ,int ) ;
 int vortex_XtalkHw_SetLeftEQ (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetLeftXT (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetRightEQ (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetRightXT (int *,int ,int ,int ) ;
 int wXtalkWideLeftDelay ;
 int wXtalkWideRightDelay ;

__attribute__((used)) static void vortex_XtalkHw_ProgramXtalkWide(vortex_t * vortex)
{

 vortex_XtalkHw_SetLeftEQ(vortex, sXtalkWideKLeftEq,
     sXtalkWideShiftLeftEq, asXtalkWideCoefsLeftEq);
 vortex_XtalkHw_SetRightEQ(vortex, sXtalkWideKRightEq,
      sXtalkWideShiftRightEq,
      asXtalkWideCoefsRightEq);
 vortex_XtalkHw_SetLeftXT(vortex, sXtalkWideKLeftXt,
     sXtalkWideShiftLeftXt, asXtalkWideCoefsLeftXt);
 vortex_XtalkHw_SetRightXT(vortex, sXtalkWideKLeftXt,
      sXtalkWideShiftLeftXt,
      asXtalkWideCoefsLeftXt);

 vortex_XtalkHw_SetDelay(vortex, wXtalkWideRightDelay, wXtalkWideLeftDelay);
}
