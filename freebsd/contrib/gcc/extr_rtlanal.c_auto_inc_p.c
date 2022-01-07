
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GET_CODE (int ) ;






 int XEXP (int ,int ) ;
 int stack_pointer_rtx ;

int
auto_inc_p (rtx x)
{
  switch (GET_CODE (x))
    {
    case 129:
    case 132:
    case 130:
    case 133:
    case 128:
    case 131:

      if (XEXP (x, 0) != stack_pointer_rtx)
 return 1;
    default:
      break;
    }
  return 0;
}
