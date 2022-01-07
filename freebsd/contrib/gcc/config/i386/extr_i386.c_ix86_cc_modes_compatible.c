
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ MODE_CC ;
 int VOIDmode ;
 int gcc_unreachable () ;

__attribute__((used)) static enum machine_mode
ix86_cc_modes_compatible (enum machine_mode m1, enum machine_mode m2)
{
  if (m1 == m2)
    return m1;

  if (GET_MODE_CLASS (m1) != MODE_CC || GET_MODE_CLASS (m2) != MODE_CC)
    return VOIDmode;

  if ((m1 == 132 && m2 == 131)
      || (m1 == 131 && m2 == 132))
    return 132;

  switch (m1)
    {
    default:
      gcc_unreachable ();

    case 128:
    case 132:
    case 131:
    case 130:
    case 129:
      switch (m2)
 {
 default:
   return VOIDmode;

 case 128:
 case 132:
 case 131:
 case 130:
 case 129:
   return 128;
 }

    case 133:
    case 134:


      return VOIDmode;
    }
}
