
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int vortex_EqHw_Disable (int *) ;
 int vortex_EqHw_ProgramPipe (int *) ;
 int vortex_Eqlzr_ShutDownA3d (int *) ;

__attribute__((used)) static void vortex_Eqlzr_shutdown(vortex_t * vortex)
{
 vortex_Eqlzr_ShutDownA3d(vortex);
 vortex_EqHw_ProgramPipe(vortex);
 vortex_EqHw_Disable(vortex);
}
