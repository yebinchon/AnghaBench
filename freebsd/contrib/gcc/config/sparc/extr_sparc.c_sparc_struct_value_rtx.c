
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;


 int EQ ;
 int GEN_INT (int) ;
 scalar_t__ INTEGER_CST ;
 int Pmode ;
 int SImode ;
 int STRUCT_VALUE_OFFSET ;
 scalar_t__ TARGET_ARCH64 ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_INT_CST_LOW (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_SIZE_UNIT (int ) ;
 int XEXP (int ,int ) ;
 int assign_stack_local (int ,int,int ) ;
 int const0_rtx ;
 int emit_cmp_and_jump_insns (int ,int ,int ,int ,int ,int ,int ) ;
 int emit_insn (int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int frame_pointer_rtx ;
 int gen_add3_insn (int ,int ,int ) ;
 int gen_label_rtx () ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int gen_sub3_insn (int ,int ,int ) ;
 int plus_constant (int ,int) ;
 int set_mem_alias_set (int ,int ) ;
 scalar_t__ sparc_std_struct_return ;
 int stack_pointer_rtx ;
 int struct_value_alias_set ;

__attribute__((used)) static rtx
sparc_struct_value_rtx (tree fndecl, int incoming)
{
  if (TARGET_ARCH64)
    return 0;
  else
    {
      rtx mem;

      if (incoming)
 mem = gen_rtx_MEM (Pmode, plus_constant (frame_pointer_rtx,
       STRUCT_VALUE_OFFSET));
      else
 mem = gen_rtx_MEM (Pmode, plus_constant (stack_pointer_rtx,
       STRUCT_VALUE_OFFSET));




      if (incoming == 2
   && sparc_std_struct_return
   && TYPE_SIZE_UNIT (TREE_TYPE (fndecl))
   && TREE_CODE (TYPE_SIZE_UNIT (TREE_TYPE (fndecl))) == INTEGER_CST)
 {



   rtx ret_rtx = gen_rtx_REG (Pmode, 31);
   rtx scratch = gen_reg_rtx (SImode);
   rtx endlab = gen_label_rtx ();


   tree size = TYPE_SIZE_UNIT (TREE_TYPE (fndecl));
   rtx size_rtx = GEN_INT (TREE_INT_CST_LOW (size) & 0xfff);

   rtx temp_val = assign_stack_local (Pmode, TREE_INT_CST_LOW (size), 0);







   emit_move_insn (scratch, gen_rtx_MEM (SImode,
      plus_constant (ret_rtx, 8)));

   emit_insn (gen_add3_insn (ret_rtx, ret_rtx, GEN_INT (4)));
   emit_cmp_and_jump_insns (scratch, size_rtx, EQ, const0_rtx, SImode, 0, endlab);
   emit_insn (gen_sub3_insn (ret_rtx, ret_rtx, GEN_INT (4)));



   emit_move_insn (mem, XEXP (temp_val, 0));
   emit_label (endlab);
 }

      set_mem_alias_set (mem, struct_value_alias_set);
      return mem;
    }
}
