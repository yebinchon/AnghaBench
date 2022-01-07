
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int asXtalkNarrowCoefsLeftEq ;
 int asXtalkNarrowCoefsLeftXt ;
 int asXtalkNarrowCoefsRightEq ;
 int sXtalkNarrowKLeftEq ;
 int sXtalkNarrowKLeftXt ;
 int sXtalkNarrowKRightEq ;
 int sXtalkNarrowShiftLeftEq ;
 int sXtalkNarrowShiftLeftXt ;
 int sXtalkNarrowShiftRightEq ;
 int vortex_XtalkHw_SetDelay (int *,int ,int ) ;
 int vortex_XtalkHw_SetLeftEQ (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetLeftXT (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetRightEQ (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetRightXT (int *,int ,int ,int ) ;
 int wXtalkNarrowLeftDelay ;
 int wXtalkNarrowRightDelay ;

__attribute__((used)) static void vortex_XtalkHw_ProgramXtalkNarrow(vortex_t * vortex)
{

 vortex_XtalkHw_SetLeftEQ(vortex, sXtalkNarrowKLeftEq,
     sXtalkNarrowShiftLeftEq,
     asXtalkNarrowCoefsLeftEq);
 vortex_XtalkHw_SetRightEQ(vortex, sXtalkNarrowKRightEq,
      sXtalkNarrowShiftRightEq,
      asXtalkNarrowCoefsRightEq);
 vortex_XtalkHw_SetLeftXT(vortex, sXtalkNarrowKLeftXt,
     sXtalkNarrowShiftLeftXt,
     asXtalkNarrowCoefsLeftXt);
 vortex_XtalkHw_SetRightXT(vortex, sXtalkNarrowKLeftXt,
      sXtalkNarrowShiftLeftXt,
      asXtalkNarrowCoefsLeftXt);

 vortex_XtalkHw_SetDelay(vortex, wXtalkNarrowRightDelay, wXtalkNarrowLeftDelay);
}
