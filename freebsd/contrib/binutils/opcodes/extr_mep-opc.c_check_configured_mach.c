
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MACH_BASE ;
 int MACH_H1 ;
 int MACH_MEP ;
 int MEP_CPU ;

__attribute__((used)) static int
check_configured_mach (int machs)
{

  int mach = 1 << MACH_BASE;
  switch (MEP_CPU)
    {
    case 130:
    case 129:
      mach |= (1 << MACH_MEP);
      break;
    case 128:
      mach |= (1 << MACH_H1);
      break;
    default:
      break;
    }
  return machs & mach;
}
