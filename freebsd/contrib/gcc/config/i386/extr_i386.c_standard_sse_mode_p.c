
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
__attribute__((used)) static int
standard_sse_mode_p (enum machine_mode mode)
{
  switch (mode)
    {
    case 133:
    case 128:
    case 129:
    case 131:
    case 130:
    case 132:
      return 1;

    default:
      return 0;
    }
}
