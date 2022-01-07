
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int HOST_WIDE_INT ;


 scalar_t__ ARG_POINTER_CFA_OFFSET (int ) ;
 scalar_t__ FRAME_POINTER_CFA_OFFSET (int ) ;
 int XEXP (scalar_t__,int ) ;
 int arg_pointer_rtx ;
 int copy_rtx (int ) ;
 int current_function_decl ;
 int frame_pointer_rtx ;
 scalar_t__ plus_constant (int ,int ) ;
 scalar_t__ replace_equiv_address_nv (scalar_t__,scalar_t__) ;
 scalar_t__ replace_rtx (int ,int ,scalar_t__) ;
 scalar_t__ simplify_rtx (scalar_t__) ;
 int stack_pointer_rtx ;

__attribute__((used)) static rtx
adjust_stack_reference (rtx mem, HOST_WIDE_INT adjustment)
{
  rtx addr, cfa, tmp;





  adjustment -= ARG_POINTER_CFA_OFFSET (current_function_decl);
  cfa = plus_constant (arg_pointer_rtx, adjustment);


  addr = replace_rtx (copy_rtx (XEXP (mem, 0)), stack_pointer_rtx, cfa);
  tmp = simplify_rtx (addr);
  if (tmp)
    addr = tmp;

  return replace_equiv_address_nv (mem, addr);
}
