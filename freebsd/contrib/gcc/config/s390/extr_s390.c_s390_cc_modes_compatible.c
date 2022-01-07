
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
 int VOIDmode ;

__attribute__((used)) static enum machine_mode
s390_cc_modes_compatible (enum machine_mode m1, enum machine_mode m2)
{
  if (m1 == m2)
    return m1;

  switch (m1)
    {
    case 128:
      if (m2 == 130 || m2 == 132 || m2 == 129
   || m2 == 133 || m2 == 134 || m2 == 131)
        return m2;
      return VOIDmode;

    case 133:
    case 130:
    case 132:
    case 134:
    case 131:
    case 129:
      if (m2 == 128)
 return m1;

      return VOIDmode;

    default:
      return VOIDmode;
    }
  return VOIDmode;
}
