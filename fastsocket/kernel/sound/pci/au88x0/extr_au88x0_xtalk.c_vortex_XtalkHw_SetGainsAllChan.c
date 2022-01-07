
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int asXtalkGainsAllChan ;
 int vortex_XtalkHw_SetGains (int *,int ) ;

__attribute__((used)) static void
vortex_XtalkHw_SetGainsAllChan(vortex_t * vortex)
{
 vortex_XtalkHw_SetGains(vortex, asXtalkGainsAllChan);
}
