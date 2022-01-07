
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vma; } ;
typedef TYPE_1__ reloc_data_type ;
typedef scalar_t__ bfd_vma ;



__attribute__((used)) static int
reloc_sort (const void *va, const void *vb)
{
  bfd_vma a = ((const reloc_data_type *) va)->vma;
  bfd_vma b = ((const reloc_data_type *) vb)->vma;

  return (a > b) ? 1 : ((a < b) ? -1 : 0);
}
