
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FP_REGNO_P (int) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ REG ;
 int REGNO (int ) ;

int
registers_ok_for_quad_peep (rtx reg1, rtx reg2)
{

  if (GET_CODE (reg1) != REG || GET_CODE (reg2) != REG)
    return 0;


  if (!FP_REGNO_P (REGNO (reg1))
      || !FP_REGNO_P (REGNO (reg2)))
    return 0;

  return (REGNO (reg1) == REGNO (reg2) - 1);
}
