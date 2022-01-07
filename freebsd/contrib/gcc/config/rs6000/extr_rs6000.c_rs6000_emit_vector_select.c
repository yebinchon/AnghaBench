
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtvec (int,int ,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_UNSPEC (int,int ,int) ;
 int get_vsel_insn (int) ;

__attribute__((used)) static void
rs6000_emit_vector_select (rtx dest, rtx op1, rtx op2, rtx mask)
{
  rtx t, temp;
  enum machine_mode dest_mode = GET_MODE (dest);
  int vsel_insn_index = get_vsel_insn (GET_MODE (dest));

  temp = gen_reg_rtx (dest_mode);



  t = gen_rtx_SET (VOIDmode, temp,
     gen_rtx_UNSPEC (dest_mode,
       gen_rtvec (3, op2, op1, mask),
       vsel_insn_index));
  emit_insn (t);
  emit_move_insn (dest, temp);
  return;
}
