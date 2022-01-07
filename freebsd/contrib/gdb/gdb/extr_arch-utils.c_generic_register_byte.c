
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 int gdb_assert (int) ;
 scalar_t__ generic_register_size (int) ;

int
generic_register_byte (int regnum)
{
  int byte;
  int i;
  gdb_assert (regnum >= 0 && regnum < NUM_REGS + NUM_PSEUDO_REGS);
  byte = 0;
  for (i = 0; i < regnum; i++)
    {
      byte += generic_register_size (i);
    }
  return byte;
}
