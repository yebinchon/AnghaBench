
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int) ;
 int SPARC_STACK_ALIGN (int) ;
 int SPARC_STACK_BIAS ;
 int UNITS_PER_WORD ;
 int VOIDmode ;
 scalar_t__ adjust_address (scalar_t__,int ,int) ;
 int emit_insn (scalar_t__) ;
 scalar_t__ gen_rtx_MEM (int ,int ) ;
 scalar_t__ gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_stack_pointer_dec (int ) ;
 scalar_t__ gen_stack_pointer_inc (int ) ;
 int plus_constant (int ,int) ;
 int stack_pointer_rtx ;
 int word_mode ;

__attribute__((used)) static void
emit_and_preserve (rtx seq, rtx reg, rtx reg2)
{

  HOST_WIDE_INT offset = 16*UNITS_PER_WORD;

  HOST_WIDE_INT size = SPARC_STACK_ALIGN (offset + 2*UNITS_PER_WORD);

  rtx slot
    = gen_rtx_MEM (word_mode, plus_constant (stack_pointer_rtx,
          SPARC_STACK_BIAS + offset));

  emit_insn (gen_stack_pointer_dec (GEN_INT (size)));
  emit_insn (gen_rtx_SET (VOIDmode, slot, reg));
  if (reg2)
    emit_insn (gen_rtx_SET (VOIDmode,
       adjust_address (slot, word_mode, UNITS_PER_WORD),
       reg2));
  emit_insn (seq);
  if (reg2)
    emit_insn (gen_rtx_SET (VOIDmode,
       reg2,
       adjust_address (slot, word_mode, UNITS_PER_WORD)));
  emit_insn (gen_rtx_SET (VOIDmode, reg, slot));
  emit_insn (gen_stack_pointer_inc (GEN_INT (size)));
}
