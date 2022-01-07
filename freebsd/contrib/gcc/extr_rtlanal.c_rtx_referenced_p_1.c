
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CONSTANT_POOL_ADDRESS_P (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ NULL_RTX ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 int get_pool_constant (scalar_t__) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 int rtx_referenced_p (scalar_t__,int ) ;

__attribute__((used)) static int
rtx_referenced_p_1 (rtx *body, void *x)
{
  rtx y = (rtx) x;

  if (*body == NULL_RTX)
    return y == NULL_RTX;


  if (GET_CODE (*body) == LABEL_REF && LABEL_P (y))
    return XEXP (*body, 0) == y;


  if (GET_CODE (*body) == SYMBOL_REF
      && CONSTANT_POOL_ADDRESS_P (*body))
    return rtx_referenced_p (y, get_pool_constant (*body));


  return rtx_equal_p (*body, y);
}
