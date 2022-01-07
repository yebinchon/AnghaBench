
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ REG ;
 int REGNO (int ) ;
 scalar_t__ TARGET_V9 ;

int
registers_ok_for_ldd_peep (rtx reg1, rtx reg2)
{

  if (GET_CODE (reg1) != REG || GET_CODE (reg2) != REG)
    return 0;

  if (REGNO (reg1) % 2 != 0)
    return 0;


  if (TARGET_V9 && REGNO (reg1) < 32)
    return 0;

  return (REGNO (reg1) == REGNO (reg2) - 1);
}
