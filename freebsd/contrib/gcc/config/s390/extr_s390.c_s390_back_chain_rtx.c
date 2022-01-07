
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 scalar_t__ STACK_POINTER_OFFSET ;
 int TARGET_BACKCHAIN ;
 scalar_t__ TARGET_PACKED_STACK ;
 scalar_t__ UNITS_PER_WORD ;
 int gcc_assert (int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int plus_constant (int ,scalar_t__) ;
 int stack_pointer_rtx ;

rtx
s390_back_chain_rtx (void)
{
  rtx chain;

  gcc_assert (TARGET_BACKCHAIN);

  if (TARGET_PACKED_STACK)
    chain = plus_constant (stack_pointer_rtx,
      STACK_POINTER_OFFSET - UNITS_PER_WORD);
  else
    chain = stack_pointer_rtx;

  chain = gen_rtx_MEM (Pmode, chain);
  return chain;
}
