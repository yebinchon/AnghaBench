
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;






 int TARGET_64BIT ;
 int TARGET_PARTIAL_REG_STALL ;

__attribute__((used)) static bool
ix86_tieable_integer_mode_p (enum machine_mode mode)
{
  switch (mode)
    {
    case 130:
    case 128:
      return 1;

    case 129:
      return TARGET_64BIT || !TARGET_PARTIAL_REG_STALL;

    case 131:
      return TARGET_64BIT;

    default:
      return 0;
    }
}
