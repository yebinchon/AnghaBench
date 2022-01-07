
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int GET_CODE (int ) ;
 int legitimate_constant_p (int ) ;

__attribute__((used)) static bool
ix86_cannot_force_const_mem (rtx x)
{

  switch (GET_CODE (x))
    {
    case 129:
    case 130:
    case 128:
      return 0;

    default:
      break;
    }
  return !legitimate_constant_p (x);
}
