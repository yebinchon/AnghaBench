
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ max_jumptable_ents; } ;


 int CASE_VECTOR_MODE ;
 int CASE_VECTOR_PC_RELATIVE ;
 int GEN_INT (int ) ;
 int GET_MODE_SIZE (int ) ;
 int GTU ;
 scalar_t__ INTVAL (int ) ;
 int NULL_RTX ;
 int PIC_CASE_VECTOR_ADDRESS (int ) ;
 int Pmode ;
 int REG_P (int ) ;
 TYPE_1__* cfun ;
 int convert_move (int ,int ,int ) ;
 int convert_to_mode (int,int ,int) ;
 int copy_to_mode_reg (int,int ) ;
 int emit_barrier () ;
 int emit_cmp_and_jump_insns (int ,int ,int ,int ,int,int,int ) ;
 int emit_jump_insn (int ) ;
 scalar_t__ flag_pic ;
 int gen_const_mem (int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_LABEL_REF (int,int ) ;
 int gen_rtx_MULT (int,int ,int ) ;
 int gen_rtx_PLUS (int,int ,int ) ;
 int gen_tablejump (int ,int ) ;
 int memory_address_noforce (int ,int ) ;

__attribute__((used)) static void
do_tablejump (rtx index, enum machine_mode mode, rtx range, rtx table_label,
       rtx default_label)
{
  rtx temp, vector;

  if (INTVAL (range) > cfun->max_jumptable_ents)
    cfun->max_jumptable_ents = INTVAL (range);
  emit_cmp_and_jump_insns (index, range, GTU, NULL_RTX, mode, 1,
      default_label);



  if (mode != Pmode)
    index = convert_to_mode (Pmode, index, 1);
  index = gen_rtx_PLUS (Pmode,
   gen_rtx_MULT (Pmode, index,
          GEN_INT (GET_MODE_SIZE (CASE_VECTOR_MODE))),
   gen_rtx_LABEL_REF (Pmode, table_label));





    index = memory_address_noforce (CASE_VECTOR_MODE, index);
  temp = gen_reg_rtx (CASE_VECTOR_MODE);
  vector = gen_const_mem (CASE_VECTOR_MODE, index);
  convert_move (temp, vector, 0);

  emit_jump_insn (gen_tablejump (temp, table_label));



  if (! CASE_VECTOR_PC_RELATIVE && ! flag_pic)
    emit_barrier ();
}
