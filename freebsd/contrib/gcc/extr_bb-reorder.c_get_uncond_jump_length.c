
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int delete_insn (int ) ;
 int emit_jump_insn (int ) ;
 int emit_label_before (int ,int ) ;
 int gen_jump (int ) ;
 int gen_label_rtx () ;
 int get_attr_min_length (int ) ;
 int get_insns () ;

__attribute__((used)) static int
get_uncond_jump_length (void)
{
  rtx label, jump;
  int length;

  label = emit_label_before (gen_label_rtx (), get_insns ());
  jump = emit_jump_insn (gen_jump (label));

  length = get_attr_min_length (jump);

  delete_insn (jump);
  delete_insn (label);
  return length;
}
