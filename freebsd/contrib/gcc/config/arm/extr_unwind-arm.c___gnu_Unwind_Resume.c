
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * r; } ;
struct TYPE_6__ {TYPE_4__ core; } ;
typedef TYPE_1__ phase2_vrs ;
typedef int (* personality_routine ) (int ,int *,int *) ;
typedef int _Unwind_Reason_Code ;
typedef int _Unwind_Control_Block ;
typedef int _Unwind_Context ;


 size_t R_PC ;
 scalar_t__ UCB_FORCED_STOP_FN (int *) ;
 scalar_t__ UCB_PR_ADDR (int *) ;
 int UCB_SAVED_CALLSITE_ADDR (int *) ;


 int _US_UNWIND_FRAME_RESUME ;
 int abort () ;
 int restore_core_regs (TYPE_4__*) ;
 int stub1 (int ,int *,int *) ;
 int unwind_phase2 (int *,TYPE_1__*) ;
 int unwind_phase2_forced (int *,TYPE_1__*,int) ;

_Unwind_Reason_Code
__gnu_Unwind_Resume (_Unwind_Control_Block * ucbp, phase2_vrs * entry_vrs)
{
  _Unwind_Reason_Code pr_result;


  entry_vrs->core.r[R_PC] = UCB_SAVED_CALLSITE_ADDR (ucbp);

  if (UCB_FORCED_STOP_FN (ucbp))
    {
      unwind_phase2_forced (ucbp, entry_vrs, 1);


      abort ();
    }


  pr_result = ((personality_routine) UCB_PR_ADDR (ucbp))
 (_US_UNWIND_FRAME_RESUME, ucbp, (_Unwind_Context *) entry_vrs);

  switch (pr_result)
    {
    case 128:

      restore_core_regs (&entry_vrs->core);

    case 129:

      unwind_phase2 (ucbp, entry_vrs);

    default:
      abort ();
    }
}
