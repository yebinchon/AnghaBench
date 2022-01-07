
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _end ;
 scalar_t__ _stext ;
 int in_gate_area_no_mm (unsigned long) ;

__attribute__((used)) static inline int is_kernel(unsigned long addr)
{
 if (addr >= (unsigned long)_stext && addr <= (unsigned long)_end)
  return 1;
 return in_gate_area_no_mm(addr);
}
