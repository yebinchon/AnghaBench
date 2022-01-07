
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function {int arg_pointer_save_area_init; scalar_t__ x_arg_pointer_save_area; } ;
typedef scalar_t__ rtx ;


 int GET_MODE_SIZE (int ) ;
 int Pmode ;
 scalar_t__ assign_stack_local_1 (int ,int ,int ,struct function*) ;
 struct function* cfun ;
 int emit_insn_after (scalar_t__,int ) ;
 int emit_move_insn (int ,int ) ;
 int end_sequence () ;
 int entry_of_function () ;
 scalar_t__ get_insns () ;
 int pop_topmost_sequence () ;
 int push_topmost_sequence () ;
 int start_sequence () ;
 int validize_mem (scalar_t__) ;
 int virtual_incoming_args_rtx ;

rtx
get_arg_pointer_save_area (struct function *f)
{
  rtx ret = f->x_arg_pointer_save_area;

  if (! ret)
    {
      ret = assign_stack_local_1 (Pmode, GET_MODE_SIZE (Pmode), 0, f);
      f->x_arg_pointer_save_area = ret;
    }

  if (f == cfun && ! f->arg_pointer_save_area_init)
    {
      rtx seq;




      start_sequence ();
      emit_move_insn (validize_mem (ret), virtual_incoming_args_rtx);
      seq = get_insns ();
      end_sequence ();

      push_topmost_sequence ();
      emit_insn_after (seq, entry_of_function ());
      pop_topmost_sequence ();
    }

  return ret;
}
