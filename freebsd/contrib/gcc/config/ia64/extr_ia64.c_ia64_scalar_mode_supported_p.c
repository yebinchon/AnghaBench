
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
 int TARGET_HPUX ;




__attribute__((used)) static bool
ia64_scalar_mode_supported_p (enum machine_mode mode)
{
  switch (mode)
    {
    case 134:
    case 135:
    case 131:
    case 136:
    case 129:
      return 1;

    case 132:
    case 137:
    case 128:
    case 133:
      return 1;

    case 130:
      return TARGET_HPUX;

    default:
      return 0;
    }
}
