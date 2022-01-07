
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PC_REGNUM ;
 int ZERO_REGNUM ;

__attribute__((used)) static int
getregs_supplies (int regno)
{
  return ((regno) >= ZERO_REGNUM && (regno) <= PC_REGNUM);
}
