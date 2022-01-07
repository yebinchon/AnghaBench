
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALPHA_V0_REGNUM ;
 int ALPHA_ZERO_REGNUM ;
 int PC_REGNUM ;

__attribute__((used)) static int
getregs_supplies (int regno)
{
  return ((regno >= ALPHA_V0_REGNUM && regno <= ALPHA_ZERO_REGNUM)
   || regno >= PC_REGNUM);
}
