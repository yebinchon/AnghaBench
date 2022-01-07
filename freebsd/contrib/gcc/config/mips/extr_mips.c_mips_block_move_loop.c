
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ DImode ;
 int GEN_INT (int) ;
 int MAX_MOVE_BYTES ;
 int OPTAB_WIDEN ;
 int PLUS ;
 scalar_t__ Pmode ;
 int emit_insn (int ) ;
 int emit_jump_insn (int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int expand_simple_binop (scalar_t__,int ,int ,int ,int ,int ,int ) ;
 int gen_bne (int ) ;
 int gen_cmpdi (int ,int ) ;
 int gen_cmpsi (int ,int ) ;
 int gen_label_rtx () ;
 int mips_adjust_block_mem (int ,int,int *,int *) ;
 int mips_block_move_straight (int ,int ,int) ;
 int plus_constant (int ,int) ;

__attribute__((used)) static void
mips_block_move_loop (rtx dest, rtx src, HOST_WIDE_INT length)
{
  rtx label, src_reg, dest_reg, final_src;
  HOST_WIDE_INT leftover;

  leftover = length % MAX_MOVE_BYTES;
  length -= leftover;


  mips_adjust_block_mem (src, MAX_MOVE_BYTES, &src_reg, &src);
  mips_adjust_block_mem (dest, MAX_MOVE_BYTES, &dest_reg, &dest);



  final_src = expand_simple_binop (Pmode, PLUS, src_reg, GEN_INT (length),
       0, 0, OPTAB_WIDEN);


  label = gen_label_rtx ();
  emit_label (label);


  mips_block_move_straight (dest, src, MAX_MOVE_BYTES);


  emit_move_insn (src_reg, plus_constant (src_reg, MAX_MOVE_BYTES));
  emit_move_insn (dest_reg, plus_constant (dest_reg, MAX_MOVE_BYTES));


  if (Pmode == DImode)
    emit_insn (gen_cmpdi (src_reg, final_src));
  else
    emit_insn (gen_cmpsi (src_reg, final_src));
  emit_jump_insn (gen_bne (label));


  if (leftover)
    mips_block_move_straight (dest, src, leftover);
}
