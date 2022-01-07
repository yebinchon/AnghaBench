
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int NEXT_INSN (int ) ;
 scalar_t__ apply_args_value ;
 int emit_insn_before (scalar_t__,int ) ;
 int end_sequence () ;
 int entry_of_function () ;
 scalar_t__ expand_builtin_apply_args_1 () ;
 scalar_t__ get_insns () ;
 int pop_topmost_sequence () ;
 int push_topmost_sequence () ;
 int start_sequence () ;

__attribute__((used)) static rtx
expand_builtin_apply_args (void)
{


  if (apply_args_value != 0)
    return apply_args_value;
  {



    rtx temp;
    rtx seq;

    start_sequence ();
    temp = expand_builtin_apply_args_1 ();
    seq = get_insns ();
    end_sequence ();

    apply_args_value = temp;





    push_topmost_sequence ();
    emit_insn_before (seq, NEXT_INSN (entry_of_function ()));
    pop_topmost_sequence ();
    return temp;
  }
}
