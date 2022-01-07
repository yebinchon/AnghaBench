
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUXREG ;
 int COND ;
 int REG ;

int
arc_operand_type (int opertype)
{
  switch (opertype)
    {
    case 0:
      return COND;
      break;
    case 1:
      return REG;
      break;
    case 2:
      return AUXREG;
      break;
    }
  return -1;
}
