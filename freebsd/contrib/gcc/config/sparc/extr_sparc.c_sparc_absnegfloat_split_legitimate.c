
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ REG ;
 scalar_t__ REGNO (int ) ;

int
sparc_absnegfloat_split_legitimate (rtx x, rtx y)
{
  if (GET_CODE (x) != REG)
    return 0;
  if (GET_CODE (y) != REG)
    return 0;
  if (REGNO (x) == REGNO (y))
    return 0;
  return 1;
}
