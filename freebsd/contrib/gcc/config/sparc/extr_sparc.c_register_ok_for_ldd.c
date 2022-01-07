
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ REG ;
 int REGNO (int ) ;

int
register_ok_for_ldd (rtx reg)
{

  if (GET_CODE (reg) != REG)
    return 0;

  if (REGNO (reg) < FIRST_PSEUDO_REGISTER)
    return (REGNO (reg) % 2 == 0);
  else
    return 1;
}
