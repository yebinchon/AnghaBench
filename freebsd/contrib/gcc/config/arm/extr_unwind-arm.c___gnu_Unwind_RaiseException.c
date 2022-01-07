
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * r; } ;
struct TYPE_8__ {TYPE_1__ core; } ;
typedef TYPE_2__ phase2_vrs ;
struct TYPE_9__ {TYPE_1__ core; int demand_save_flags; } ;
typedef TYPE_3__ phase1_vrs ;
typedef scalar_t__ (* personality_routine ) (int ,int *,void*) ;
typedef int _uw ;
typedef scalar_t__ _Unwind_Reason_Code ;
typedef int _Unwind_Control_Block ;


 size_t R_LR ;
 size_t R_PC ;
 scalar_t__ UCB_PR_ADDR (int *) ;
 scalar_t__ _URC_CONTINUE_UNWIND ;
 scalar_t__ _URC_FAILURE ;
 scalar_t__ _URC_HANDLER_FOUND ;
 scalar_t__ _URC_OK ;
 int _US_VIRTUAL_UNWIND_FRAME ;
 scalar_t__ get_eit_entry (int *,int ) ;
 int restore_non_core_regs (TYPE_3__*) ;
 scalar_t__ stub1 (int ,int *,void*) ;
 int unwind_phase2 (int *,TYPE_2__*) ;

_Unwind_Reason_Code
__gnu_Unwind_RaiseException (_Unwind_Control_Block * ucbp,
        phase2_vrs * entry_vrs)
{
  phase1_vrs saved_vrs;
  _Unwind_Reason_Code pr_result;


  entry_vrs->core.r[R_PC] = entry_vrs->core.r[R_LR];


  saved_vrs.core = entry_vrs->core;

  saved_vrs.demand_save_flags = ~(_uw) 0;


  do
    {

      if ((pr_result = get_eit_entry (ucbp, saved_vrs.core.r[R_PC])) != _URC_OK)
 return pr_result;


      pr_result = ((personality_routine) UCB_PR_ADDR (ucbp))
 (_US_VIRTUAL_UNWIND_FRAME, ucbp, (void *) &saved_vrs);
    }
  while (pr_result == _URC_CONTINUE_UNWIND);



  restore_non_core_regs (&saved_vrs);
  if (pr_result != _URC_HANDLER_FOUND)
    {


      return _URC_FAILURE;
    }

  unwind_phase2 (ucbp, entry_vrs);
}
