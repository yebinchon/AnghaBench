
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 scalar_t__ GET_MODE (int ) ;
 int MASK_RETURN_ADDR ;
 int NULL_RTX ;
 scalar_t__ Pmode ;
 int RETURN_ADDR_OFFSET ;
 scalar_t__ VOIDmode ;
 int convert_memory_address (scalar_t__,int ) ;
 int convert_to_mode (scalar_t__,int ,int ) ;
 int expand_and (scalar_t__,int ,int ,int ) ;
 int expand_expr (int ,int ,scalar_t__,int ) ;
 int plus_constant (int ,int ) ;

rtx
expand_builtin_extract_return_addr (tree addr_tree)
{
  rtx addr = expand_expr (addr_tree, NULL_RTX, Pmode, 0);

  if (GET_MODE (addr) != Pmode
      && GET_MODE (addr) != VOIDmode)
    {



      addr = convert_to_mode (Pmode, addr, 0);

    }
  return addr;
}
