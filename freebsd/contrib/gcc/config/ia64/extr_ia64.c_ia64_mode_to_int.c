
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
 int SPEC_MODE_INVALID ;



__attribute__((used)) static int
ia64_mode_to_int (enum machine_mode mode)
{
  switch (mode)
    {
    case 136: return 0;
    case 132: return 1;
    case 133: return 2;
    case 130: return 3;
    case 134: return 4;
    case 131: return 5;
    case 135: return 6;
    case 128: return 7;
    case 129:



      return SPEC_MODE_INVALID;
    default: return SPEC_MODE_INVALID;
    }
}
