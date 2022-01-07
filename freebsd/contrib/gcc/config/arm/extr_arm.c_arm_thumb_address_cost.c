
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int PLUS ;
 int REG ;
 int XEXP (int ,int) ;

__attribute__((used)) static inline int
arm_thumb_address_cost (rtx x)
{
  enum rtx_code c = GET_CODE (x);

  if (c == REG)
    return 1;
  if (c == PLUS
      && GET_CODE (XEXP (x, 0)) == REG
      && GET_CODE (XEXP (x, 1)) == CONST_INT)
    return 1;

  return 2;
}
