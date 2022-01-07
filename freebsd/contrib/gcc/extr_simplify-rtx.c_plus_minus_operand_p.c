
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST ;
 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MINUS ;
 scalar_t__ PLUS ;
 int XEXP (int ,int) ;

__attribute__((used)) static bool
plus_minus_operand_p (rtx x)
{
  return GET_CODE (x) == PLUS
         || GET_CODE (x) == MINUS
  || (GET_CODE (x) == CONST
      && GET_CODE (XEXP (x, 0)) == PLUS
      && CONSTANT_P (XEXP (XEXP (x, 0), 0))
      && CONSTANT_P (XEXP (XEXP (x, 0), 1)));
}
