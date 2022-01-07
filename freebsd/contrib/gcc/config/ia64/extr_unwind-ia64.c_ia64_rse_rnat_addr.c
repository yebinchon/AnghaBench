
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long *
ia64_rse_rnat_addr (unsigned long *slot_addr)
{
  return (unsigned long *) ((unsigned long) slot_addr | (0x3f << 3));
}
