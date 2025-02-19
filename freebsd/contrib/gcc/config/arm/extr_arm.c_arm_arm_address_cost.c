
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ ARITHMETIC_P (int ) ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int LABEL_REF ;
 int MEM ;
 int MINUS ;
 int PLUS ;
 int POST_DEC ;
 int POST_INC ;
 int PRE_DEC ;
 int PRE_INC ;
 int SYMBOL_REF ;
 int XEXP (int ,int) ;

__attribute__((used)) static inline int
arm_arm_address_cost (rtx x)
{
  enum rtx_code c = GET_CODE (x);

  if (c == PRE_INC || c == PRE_DEC || c == POST_INC || c == POST_DEC)
    return 0;
  if (c == MEM || c == LABEL_REF || c == SYMBOL_REF)
    return 10;

  if (c == PLUS || c == MINUS)
    {
      if (GET_CODE (XEXP (x, 0)) == CONST_INT)
 return 2;

      if (ARITHMETIC_P (XEXP (x, 0)) || ARITHMETIC_P (XEXP (x, 1)))
 return 3;

      return 4;
    }

  return 6;
}
