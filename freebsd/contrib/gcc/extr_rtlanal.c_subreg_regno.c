
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_MODE (int ) ;
 int REGNO (int ) ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 int subreg_regno_offset (int,int ,int ,int ) ;

unsigned int
subreg_regno (rtx x)
{
  unsigned int ret;
  rtx subreg = SUBREG_REG (x);
  int regno = REGNO (subreg);

  ret = regno + subreg_regno_offset (regno,
         GET_MODE (subreg),
         SUBREG_BYTE (x),
         GET_MODE (x));
  return ret;

}
