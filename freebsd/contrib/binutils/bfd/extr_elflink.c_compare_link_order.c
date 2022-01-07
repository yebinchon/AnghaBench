
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_order {int dummy; } ;
typedef scalar_t__ bfd_vma ;


 scalar_t__ elf_get_linked_section_vma (struct bfd_link_order*) ;

__attribute__((used)) static int
compare_link_order (const void * a, const void * b)
{
  bfd_vma apos;
  bfd_vma bpos;

  apos = elf_get_linked_section_vma (*(struct bfd_link_order **)a);
  bpos = elf_get_linked_section_vma (*(struct bfd_link_order **)b);
  if (apos < bpos)
    return -1;
  return apos > bpos;
}
