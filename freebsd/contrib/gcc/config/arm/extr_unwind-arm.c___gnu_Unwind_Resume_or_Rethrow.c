
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * r; } ;
struct TYPE_7__ {TYPE_1__ core; } ;
typedef TYPE_2__ phase2_vrs ;
typedef int _Unwind_Reason_Code ;
typedef int _Unwind_Control_Block ;


 size_t R_LR ;
 size_t R_PC ;
 int UCB_FORCED_STOP_FN (int *) ;
 int __gnu_Unwind_RaiseException (int *,TYPE_2__*) ;
 int unwind_phase2_forced (int *,TYPE_2__*,int ) ;

_Unwind_Reason_Code
__gnu_Unwind_Resume_or_Rethrow (_Unwind_Control_Block * ucbp,
    phase2_vrs * entry_vrs)
{
  if (!UCB_FORCED_STOP_FN (ucbp))
    return __gnu_Unwind_RaiseException (ucbp, entry_vrs);


  entry_vrs->core.r[R_PC] = entry_vrs->core.r[R_LR];

  return unwind_phase2_forced (ucbp, entry_vrs, 0);
}
