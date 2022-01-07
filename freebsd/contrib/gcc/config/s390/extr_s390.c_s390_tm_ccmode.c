
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCT1mode ;
 int CCT2mode ;
 int CCT3mode ;
 int CCTmode ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 int VOIDmode ;
 int exact_log2 (int) ;

enum machine_mode
s390_tm_ccmode (rtx op1, rtx op2, bool mixed)
{
  int bit0, bit1;


  if (GET_CODE (op1) != CONST_INT || GET_CODE (op2) != CONST_INT)
    return VOIDmode;



  if (INTVAL (op2) == 0)
    return CCTmode;



  if (INTVAL (op2) == INTVAL (op1))
    return CCT3mode;





  if (mixed)
    {
      bit1 = exact_log2 (INTVAL (op2));
      bit0 = exact_log2 (INTVAL (op1) ^ INTVAL (op2));
      if (bit0 != -1 && bit1 != -1)
        return bit0 > bit1 ? CCT1mode : CCT2mode;
    }

  return VOIDmode;
}
