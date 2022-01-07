
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int NUM_REGS ;

__attribute__((used)) static void
set_reg_offset (CORE_ADDR *saved_regs, int regno, CORE_ADDR offset)
{
  if (saved_regs[regno] == 0)
    {
      saved_regs[regno + 0 * NUM_REGS] = offset;
      saved_regs[regno + 1 * NUM_REGS] = offset;
    }
}
