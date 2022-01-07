
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * r; } ;
struct TYPE_7__ {TYPE_1__ core; } ;
typedef TYPE_2__ phase2_vrs ;
struct TYPE_8__ {TYPE_1__ core; int demand_save_flags; } ;
typedef TYPE_3__ phase1_vrs ;
typedef scalar_t__ (* personality_routine ) (int,int *,void*) ;
typedef int _uw ;
typedef scalar_t__ (* _Unwind_Trace_Fn ) (int *,void*) ;
typedef scalar_t__ _Unwind_Reason_Code ;
typedef int _Unwind_Ptr ;
typedef int _Unwind_Control_Block ;
typedef int _Unwind_Context ;


 size_t R_LR ;
 size_t R_PC ;
 scalar_t__ UCB_PR_ADDR (int *) ;
 scalar_t__ _URC_END_OF_STACK ;
 scalar_t__ _URC_FAILURE ;
 scalar_t__ _URC_NO_REASON ;
 scalar_t__ _URC_OK ;
 int _US_FORCE_UNWIND ;
 int _US_VIRTUAL_UNWIND_FRAME ;
 int _Unwind_SetGR (int *,int,int ) ;
 scalar_t__ get_eit_entry (int *,int ) ;
 int restore_non_core_regs (TYPE_3__*) ;
 scalar_t__ stub1 (int *,void*) ;
 scalar_t__ stub2 (int,int *,void*) ;

_Unwind_Reason_Code
__gnu_Unwind_Backtrace(_Unwind_Trace_Fn trace, void * trace_argument,
         phase2_vrs * entry_vrs)
{
  phase1_vrs saved_vrs;
  _Unwind_Reason_Code code;

  _Unwind_Control_Block ucb;
  _Unwind_Control_Block *ucbp = &ucb;


  entry_vrs->core.r[R_PC] = entry_vrs->core.r[R_LR];


  saved_vrs.core = entry_vrs->core;

  saved_vrs.demand_save_flags = ~(_uw) 0;

  do
    {

      if ((code = get_eit_entry (ucbp, saved_vrs.core.r[R_PC])) != _URC_OK)
   break;






      _Unwind_SetGR((_Unwind_Context *)&saved_vrs, 12, (_Unwind_Ptr) ucbp);


      if ((*trace) ((_Unwind_Context *) &saved_vrs, trace_argument)
   != _URC_NO_REASON)
 {
   code = _URC_FAILURE;
   break;
 }


      code = ((personality_routine) UCB_PR_ADDR (ucbp))
 (_US_VIRTUAL_UNWIND_FRAME | _US_FORCE_UNWIND,
  ucbp, (void *) &saved_vrs);
    }
  while (code != _URC_END_OF_STACK
  && code != _URC_FAILURE);

 finish:
  restore_non_core_regs (&saved_vrs);
  return code;
}
