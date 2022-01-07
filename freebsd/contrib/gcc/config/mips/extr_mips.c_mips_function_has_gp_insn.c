
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int has_gp_insn_p; } ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GOT_UNSET ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ USE ;
 int VOIDmode ;
 TYPE_2__* cfun ;
 scalar_t__ get_attr_got (scalar_t__) ;
 scalar_t__ get_insns () ;
 int pop_topmost_sequence () ;
 int push_topmost_sequence () ;
 scalar_t__ small_data_pattern (int ,int ) ;

__attribute__((used)) static bool
mips_function_has_gp_insn (void)
{

  if (!cfun->machine->has_gp_insn_p)
    {
      rtx insn;

      push_topmost_sequence ();
      for (insn = get_insns (); insn; insn = NEXT_INSN (insn))
 if (INSN_P (insn)
     && GET_CODE (PATTERN (insn)) != USE
     && GET_CODE (PATTERN (insn)) != CLOBBER
     && (get_attr_got (insn) != GOT_UNSET
  || small_data_pattern (PATTERN (insn), VOIDmode)))
   break;
      pop_topmost_sequence ();

      cfun->machine->has_gp_insn_p = (insn != 0);
    }
  return cfun->machine->has_gp_insn_p;
}
