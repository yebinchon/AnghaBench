
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int alXtalkDlineZeros ;
 int asXtalkCoefsZeros ;
 int asXtalkGainsZeros ;
 int asXtalkInStateZeros ;
 int asXtalkOutStateZeros ;
 int vortex_XtalkHw_SetDelay (int *,int ,int ) ;
 int vortex_XtalkHw_SetGains (int *,int ) ;
 int vortex_XtalkHw_SetLeftDline (int *,int ) ;
 int vortex_XtalkHw_SetLeftEQ (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetLeftEQStates (int *,int ,int ) ;
 int vortex_XtalkHw_SetLeftXT (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetLeftXTStates (int *,int ,int ) ;
 int vortex_XtalkHw_SetRightDline (int *,int ) ;
 int vortex_XtalkHw_SetRightEQ (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetRightEQStates (int *,int ,int ) ;
 int vortex_XtalkHw_SetRightXT (int *,int ,int ,int ) ;
 int vortex_XtalkHw_SetRightXTStates (int *,int ,int ) ;
 int vortex_XtalkHw_ZeroIO (int *) ;

__attribute__((used)) static void vortex_XtalkHw_ZeroState(vortex_t * vortex)
{
 vortex_XtalkHw_ZeroIO(vortex);

 vortex_XtalkHw_SetLeftEQ(vortex, 0, 0, asXtalkCoefsZeros);
 vortex_XtalkHw_SetRightEQ(vortex, 0, 0, asXtalkCoefsZeros);

 vortex_XtalkHw_SetLeftXT(vortex, 0, 0, asXtalkCoefsZeros);
 vortex_XtalkHw_SetRightXT(vortex, 0, 0, asXtalkCoefsZeros);

 vortex_XtalkHw_SetGains(vortex, asXtalkGainsZeros);

 vortex_XtalkHw_SetDelay(vortex, 0, 0);

 vortex_XtalkHw_SetLeftDline(vortex, alXtalkDlineZeros);
 vortex_XtalkHw_SetRightDline(vortex, alXtalkDlineZeros);
 vortex_XtalkHw_SetLeftDline(vortex, alXtalkDlineZeros);
 vortex_XtalkHw_SetRightDline(vortex, alXtalkDlineZeros);

 vortex_XtalkHw_SetLeftEQStates(vortex, asXtalkInStateZeros,
           asXtalkOutStateZeros);
 vortex_XtalkHw_SetRightEQStates(vortex, asXtalkInStateZeros,
     asXtalkOutStateZeros);
 vortex_XtalkHw_SetLeftXTStates(vortex, asXtalkInStateZeros,
           asXtalkOutStateZeros);
 vortex_XtalkHw_SetRightXTStates(vortex, asXtalkInStateZeros,
     asXtalkOutStateZeros);
}
