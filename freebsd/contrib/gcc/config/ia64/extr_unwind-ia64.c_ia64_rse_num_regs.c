
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ia64_rse_slot_num (unsigned long*) ;

__attribute__((used)) static inline unsigned long
ia64_rse_num_regs (unsigned long *bspstore, unsigned long *bsp)
{
  unsigned long slots = (bsp - bspstore);

  return slots - (ia64_rse_slot_num (bspstore) + slots)/0x40;
}
