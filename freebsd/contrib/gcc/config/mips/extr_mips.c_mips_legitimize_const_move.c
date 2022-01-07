
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef scalar_t__ HOST_WIDE_INT ;


 int INTVAL (int ) ;
 scalar_t__ SMALL_OPERAND (scalar_t__) ;
 int TARGET_MIPS16 ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int force_const_mem (int,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int memory_operand (int ,int ) ;
 int mips_add_offset (int ,int ,scalar_t__) ;
 int mips_force_temporary (int ,int ) ;
 int mips_legitimize_tls_address (int ) ;
 int mips_move_integer (int ,int ,int ) ;
 int mips_split_const (int ,int *,scalar_t__*) ;
 int mips_split_symbol (int ,int ) ;
 scalar_t__ mips_tls_operand_p (int ) ;
 int no_new_pseudos ;
 int replace_equiv_address (int ,int ) ;
 scalar_t__ splittable_const_int_operand (int ,int) ;
 scalar_t__ splittable_symbolic_operand (int ,int) ;

__attribute__((used)) static void
mips_legitimize_const_move (enum machine_mode mode, rtx dest, rtx src)
{
  rtx base;
  HOST_WIDE_INT offset;


  if (splittable_const_int_operand (src, mode))
    {
      mips_move_integer (dest, dest, INTVAL (src));
      return;
    }


  if (splittable_symbolic_operand (src, mode))
    {
      emit_insn (gen_rtx_SET (VOIDmode, dest, mips_split_symbol (dest, src)));
      return;
    }

  if (mips_tls_operand_p (src))
    {
      emit_move_insn (dest, mips_legitimize_tls_address (src));
      return;
    }




  mips_split_const (src, &base, &offset);
  if (!TARGET_MIPS16
      && offset != 0
      && (!no_new_pseudos || SMALL_OPERAND (offset)))
    {
      base = mips_force_temporary (dest, base);
      emit_move_insn (dest, mips_add_offset (0, base, offset));
      return;
    }

  src = force_const_mem (mode, src);



  if (!memory_operand (src, VOIDmode))
    src = replace_equiv_address (src, mips_split_symbol (dest, XEXP (src, 0)));
  emit_move_insn (dest, src);
}
