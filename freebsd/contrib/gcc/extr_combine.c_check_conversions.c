
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_PROMOTED_VAR_P (int ) ;
 int SUBREG_REG (int ) ;
 int XEXP (int ,int) ;
 int XVEC (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int record_promoted_value (int ,int ) ;
 int record_truncated_value (int ) ;

__attribute__((used)) static void
check_conversions (rtx insn, rtx x)
{
  if (GET_CODE (x) == SUBREG || REG_P (x))
    {
      if (GET_CODE (x) == SUBREG
   && SUBREG_PROMOTED_VAR_P (x)
   && REG_P (SUBREG_REG (x)))
 record_promoted_value (insn, x);

      record_truncated_value (x);
    }
  else
    {
      const char *format = GET_RTX_FORMAT (GET_CODE (x));
      int i, j;

      for (i = 0; i < GET_RTX_LENGTH (GET_CODE (x)); i++)
 switch (format[i])
   {
   case 'e':
     check_conversions (insn, XEXP (x, i));
     break;
   case 'V':
   case 'E':
     if (XVEC (x, i) != 0)
       for (j = 0; j < XVECLEN (x, i); j++)
  check_conversions (insn, XVECEXP (x, i, j));
     break;
   }
    }
}
