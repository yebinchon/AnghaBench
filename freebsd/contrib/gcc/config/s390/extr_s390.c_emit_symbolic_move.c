
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 int Pmode ;
 scalar_t__ TLS_SYMBOLIC_CONST (int ) ;
 scalar_t__ flag_pic ;
 int force_reg (int ,int ) ;
 int gen_reg_rtx (int ) ;
 int legitimize_pic_address (int ,int ) ;
 int legitimize_tls_address (int ,int ) ;
 scalar_t__ no_new_pseudos ;

void
emit_symbolic_move (rtx *operands)
{
  rtx temp = no_new_pseudos ? operands[0] : gen_reg_rtx (Pmode);

  if (GET_CODE (operands[0]) == MEM)
    operands[1] = force_reg (Pmode, operands[1]);
  else if (TLS_SYMBOLIC_CONST (operands[1]))
    operands[1] = legitimize_tls_address (operands[1], temp);
  else if (flag_pic)
    operands[1] = legitimize_pic_address (operands[1], temp);
}
