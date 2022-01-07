
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {int * bfd_section; } ;


 TYPE_1__** elf_elfsections (int *) ;
 unsigned int elf_numsections (int *) ;

asection *
bfd_section_from_elf_index (bfd *abfd, unsigned int index)
{
  if (index >= elf_numsections (abfd))
    return ((void*)0);
  return elf_elfsections (abfd)[index]->bfd_section;
}
