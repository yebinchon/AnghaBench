
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_MODE (int ) ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 unsigned int subreg_lsb_1 (int ,int ,int ) ;

unsigned int
subreg_lsb (rtx x)
{
  return subreg_lsb_1 (GET_MODE (x), GET_MODE (SUBREG_REG (x)),
         SUBREG_BYTE (x));
}
