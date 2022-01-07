
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_REGS ;

__attribute__((used)) static int
real_register (int regnum)
{
  return regnum >= 0 && regnum < NUM_REGS;
}
