
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int NULL_RTX ;
 int Pmode ;
 int RETURN_ADDR_OFFSET ;
 int convert_memory_address (int ,int ) ;
 int expand_expr (int ,int ,int ,int ) ;
 int force_reg (int ,int ) ;
 int plus_constant (int ,int ) ;
 int ptr_mode ;

rtx
expand_builtin_frob_return_addr (tree addr_tree)
{
  rtx addr = expand_expr (addr_tree, NULL_RTX, ptr_mode, 0);

  addr = convert_memory_address (Pmode, addr);






  return addr;
}
