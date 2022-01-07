
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;






 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ IS_STACK_MODE (int ) ;


 int avoid_constant_pool_reference (int ) ;
 int can_assign_to_reg_p (int ) ;

__attribute__((used)) static int
want_to_gcse_p (rtx x)
{
  switch (GET_CODE (x))
    {
    case 129:
    case 128:
    case 131:
    case 132:
    case 130:
    case 133:
      return 0;

    default:
      return can_assign_to_reg_p (x);
    }
}
