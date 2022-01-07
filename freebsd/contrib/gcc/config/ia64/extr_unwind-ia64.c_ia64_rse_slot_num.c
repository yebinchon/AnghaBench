
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long
ia64_rse_slot_num (unsigned long *addr)
{
  return (((unsigned long) addr) >> 3) & 0x3f;
}
