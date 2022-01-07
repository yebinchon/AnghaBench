
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MINUS ;
 scalar_t__ PLUS ;
 int XEXP (int ,int) ;

rtx
get_related_value (rtx x)
{
  if (GET_CODE (x) != CONST)
    return 0;
  x = XEXP (x, 0);
  if (GET_CODE (x) == PLUS
      && GET_CODE (XEXP (x, 1)) == CONST_INT)
    return XEXP (x, 0);
  else if (GET_CODE (x) == MINUS
    && GET_CODE (XEXP (x, 1)) == CONST_INT)
    return XEXP (x, 0);
  return 0;
}
