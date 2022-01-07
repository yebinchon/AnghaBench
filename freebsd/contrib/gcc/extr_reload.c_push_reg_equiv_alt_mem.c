
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int REG_EQUIV ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ alloc_EXPR_LIST (int ,scalar_t__,scalar_t__) ;
 scalar_t__* reg_equiv_alt_mem_list ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
push_reg_equiv_alt_mem (int regno, rtx mem)
{
  rtx it;

  for (it = reg_equiv_alt_mem_list [regno]; it; it = XEXP (it, 1))
    if (rtx_equal_p (XEXP (it, 0), mem))
      return;

  reg_equiv_alt_mem_list [regno]
    = alloc_EXPR_LIST (REG_EQUIV, mem,
         reg_equiv_alt_mem_list [regno]);
}
