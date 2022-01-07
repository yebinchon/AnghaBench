
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;







__attribute__((used)) static bool
ia64_vector_mode_supported_p (enum machine_mode mode)
{
  switch (mode)
    {
    case 128:
    case 129:
    case 130:
      return 1;

    case 131:
      return 1;

    default:
      return 0;
    }
}
