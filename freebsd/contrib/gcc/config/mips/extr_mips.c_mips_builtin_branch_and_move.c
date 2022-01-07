
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int emit_barrier () ;
 int emit_jump_insn (int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_condjump (int ,int ) ;
 int gen_jump (int ) ;
 int gen_label_rtx () ;

__attribute__((used)) static rtx
mips_builtin_branch_and_move (rtx condition, rtx target,
         rtx value_if_true, rtx value_if_false)
{
  rtx true_label, done_label;

  true_label = gen_label_rtx ();
  done_label = gen_label_rtx ();


  emit_move_insn (target, value_if_false);


  emit_jump_insn (gen_condjump (condition, true_label));
  emit_jump_insn (gen_jump (done_label));
  emit_barrier ();


  emit_label (true_label);
  emit_move_insn (target, value_if_true);

  emit_label (done_label);
  return target;
}
