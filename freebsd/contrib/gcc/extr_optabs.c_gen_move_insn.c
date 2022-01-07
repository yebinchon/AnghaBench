
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int emit_move_insn_1 (int ,int ) ;
 int end_sequence () ;
 int get_insns () ;
 int start_sequence () ;

rtx
gen_move_insn (rtx x, rtx y)
{
  rtx seq;

  start_sequence ();
  emit_move_insn_1 (x, y);
  seq = get_insns ();
  end_sequence ();
  return seq;
}
