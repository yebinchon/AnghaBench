
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int ) ;
 scalar_t__ MODE_INT ;
 int REG_P (scalar_t__) ;
 scalar_t__ STRICT_LOW_PART ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ ZERO_EXTRACT ;

__attribute__((used)) static bool
reg_subword_p (rtx x, rtx reg)
{

  if (!REG_P (reg) || GET_MODE_CLASS (GET_MODE (reg)) != MODE_INT)
    return 0;

  if (GET_CODE (x) == STRICT_LOW_PART
      || GET_CODE (x) == ZERO_EXTRACT)
    x = XEXP (x, 0);

  return GET_CODE (x) == SUBREG
  && SUBREG_REG (x) == reg
  && GET_MODE_CLASS (GET_MODE (x)) == MODE_INT;
}
