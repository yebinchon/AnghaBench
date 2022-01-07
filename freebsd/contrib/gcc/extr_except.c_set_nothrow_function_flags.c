
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_2__ {int all_throwers_are_sibcalls; } ;
typedef int TREE_NOTHROW ;


 int CALL_P (scalar_t__) ;
 scalar_t__ DECL_REPLACEABLE_P (int ) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int SIBLING_CALL_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ can_throw_external (scalar_t__) ;
 TYPE_1__* cfun ;
 int current_function_decl ;
 scalar_t__ current_function_epilogue_delay_list ;
 int flag_exceptions ;
 scalar_t__ get_insns () ;

unsigned int
set_nothrow_function_flags (void)
{
  rtx insn;




  if (DECL_REPLACEABLE_P (current_function_decl))
    return 0;

  TREE_NOTHROW (current_function_decl) = 1;







  cfun->all_throwers_are_sibcalls = 1;

  if (! flag_exceptions)
    return 0;

  for (insn = get_insns (); insn; insn = NEXT_INSN (insn))
    if (can_throw_external (insn))
      {
        TREE_NOTHROW (current_function_decl) = 0;

 if (!CALL_P (insn) || !SIBLING_CALL_P (insn))
   {
     cfun->all_throwers_are_sibcalls = 0;
     return 0;
   }
      }

  for (insn = current_function_epilogue_delay_list; insn;
       insn = XEXP (insn, 1))
    if (can_throw_external (insn))
      {
        TREE_NOTHROW (current_function_decl) = 0;

 if (!CALL_P (insn) || !SIBLING_CALL_P (insn))
   {
     cfun->all_throwers_are_sibcalls = 0;
     return 0;
   }
      }
  return 0;
}
