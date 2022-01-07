
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONSTANT_POOL_ADDRESS_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int NULL_RTX ;
 scalar_t__ SYMBOL_REF ;
 int XEXP (int ,int ) ;
 int get_pool_constant (int ) ;
 int ix86_delegitimize_address (int ) ;

rtx
maybe_get_pool_constant (rtx x)
{
  x = ix86_delegitimize_address (XEXP (x, 0));

  if (GET_CODE (x) == SYMBOL_REF && CONSTANT_POOL_ADDRESS_P (x))
    return get_pool_constant (x);

  return NULL_RTX;
}
