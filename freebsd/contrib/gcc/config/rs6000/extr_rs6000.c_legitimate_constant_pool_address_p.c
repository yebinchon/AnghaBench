
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ TARGET_MINIMAL_TOC ;
 scalar_t__ TARGET_TOC ;
 scalar_t__ TOC_REGISTER ;
 int XEXP (int ,int) ;
 scalar_t__ constant_pool_expr_p (int ) ;

bool
legitimate_constant_pool_address_p (rtx x)
{
  return (TARGET_TOC
   && GET_CODE (x) == PLUS
   && GET_CODE (XEXP (x, 0)) == REG
   && (TARGET_MINIMAL_TOC || REGNO (XEXP (x, 0)) == TOC_REGISTER)
   && constant_pool_expr_p (XEXP (x, 1)));
}
