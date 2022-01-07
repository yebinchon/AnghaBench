
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_rse_slot_num (unsigned long*) ;

__attribute__((used)) static inline unsigned long
ia64_rse_is_rnat_slot (unsigned long *addr)
{
  return ia64_rse_slot_num (addr) == 0x3f;
}
