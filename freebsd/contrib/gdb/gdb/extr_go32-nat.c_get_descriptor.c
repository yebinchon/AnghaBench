
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_descr {scalar_t__ stype; } ;


 scalar_t__ read_memory_region (unsigned long,void*,int) ;

__attribute__((used)) static int
get_descriptor (unsigned long table_base, int idx, void *descr)
{
  unsigned long addr = table_base + idx * 8;

  if (read_memory_region (addr, descr, 8))
    return (int)((struct seg_descr *)descr)->stype;
  return -1;
}
