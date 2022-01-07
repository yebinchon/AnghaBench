
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {unsigned short xt_mode; } ;
typedef TYPE_1__ vortex_t ;






 int vortex_XtalkHw_Enable (TYPE_1__*) ;
 int vortex_XtalkHw_ProgramDiamondXtalk (TYPE_1__*) ;
 int vortex_XtalkHw_ProgramPipe (TYPE_1__*) ;
 int vortex_XtalkHw_ProgramXtalkNarrow (TYPE_1__*) ;
 int vortex_XtalkHw_ProgramXtalkWide (TYPE_1__*) ;
 int vortex_XtalkHw_SetGainsAllChan (TYPE_1__*) ;
 int vortex_XtalkHw_SetSampleRate (TYPE_1__*,int) ;
 int vortex_XtalkHw_init (TYPE_1__*) ;

__attribute__((used)) static int Vort3DRend_Initialize(vortex_t * v, unsigned short mode)
{
 v->xt_mode = mode;

 vortex_XtalkHw_init(v);
 vortex_XtalkHw_SetGainsAllChan(v);
 switch (v->xt_mode) {
 case 129:
  vortex_XtalkHw_ProgramXtalkNarrow(v);
  break;
 case 128:
  vortex_XtalkHw_ProgramXtalkWide(v);
  break;
 default:
 case 130:
  vortex_XtalkHw_ProgramPipe(v);
  break;
 case 131:
  vortex_XtalkHw_ProgramDiamondXtalk(v);
  break;
 }
 vortex_XtalkHw_SetSampleRate(v, 0x11);
 vortex_XtalkHw_Enable(v);
 return 0;
}
