
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int AND ;
 int BITS_PER_UNIT ;
 int GEN_INT (int) ;
 int OPTAB_LIB_WIDEN ;
 int PLUS ;
 int Pmode ;
 int STACK_BOUNDARY ;
 int TRAMPOLINE_ALIGNMENT ;
 int expand_simple_binop (int ,int ,int ,int ,int ,int ,int ) ;
 int gen_reg_rtx (int ) ;

__attribute__((used)) static rtx
round_trampoline_addr (rtx tramp)
{
  rtx temp, addend, mask;



  if (TRAMPOLINE_ALIGNMENT <= STACK_BOUNDARY)
    return tramp;


  temp = gen_reg_rtx (Pmode);
  addend = GEN_INT (TRAMPOLINE_ALIGNMENT / BITS_PER_UNIT - 1);
  mask = GEN_INT (-TRAMPOLINE_ALIGNMENT / BITS_PER_UNIT);

  temp = expand_simple_binop (Pmode, PLUS, tramp, addend,
          temp, 0, OPTAB_LIB_WIDEN);
  tramp = expand_simple_binop (Pmode, AND, temp, mask,
          temp, 0, OPTAB_LIB_WIDEN);

  return tramp;
}
