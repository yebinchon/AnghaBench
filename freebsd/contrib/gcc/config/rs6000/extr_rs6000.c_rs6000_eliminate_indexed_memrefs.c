
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 scalar_t__ REG ;
 int XEXP (int ,int ) ;
 int copy_addr_to_reg (int ) ;
 int legitimate_constant_pool_address_p (int ) ;
 int reload_in_progress ;
 int replace_equiv_address (int ,int ) ;

__attribute__((used)) static void
rs6000_eliminate_indexed_memrefs (rtx operands[2])
{
  if (GET_CODE (operands[0]) == MEM
      && GET_CODE (XEXP (operands[0], 0)) != REG
      && ! legitimate_constant_pool_address_p (XEXP (operands[0], 0))
      && ! reload_in_progress)
    operands[0]
      = replace_equiv_address (operands[0],
          copy_addr_to_reg (XEXP (operands[0], 0)));

  if (GET_CODE (operands[1]) == MEM
      && GET_CODE (XEXP (operands[1], 0)) != REG
      && ! legitimate_constant_pool_address_p (XEXP (operands[1], 0))
      && ! reload_in_progress)
    operands[1]
      = replace_equiv_address (operands[1],
          copy_addr_to_reg (XEXP (operands[1], 0)));
}
