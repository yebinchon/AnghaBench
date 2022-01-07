
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long ia64_rse_slot_num (unsigned long*) ;

__attribute__((used)) static inline unsigned long *
ia64_rse_skip_regs (unsigned long *addr, long num_regs)
{
  long delta = ia64_rse_slot_num (addr) + num_regs;

  if (num_regs < 0)
    delta -= 0x3e;
  return addr + num_regs + delta/0x3f;
}
