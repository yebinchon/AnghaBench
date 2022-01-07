
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_list {struct section_list* prev; struct section_list* next; int * sec; } ;
typedef int asection ;


 struct section_list* bfd_malloc (int) ;
 struct section_list* sections_with_arm_elf_section_data ;

__attribute__((used)) static void
record_section_with_arm_elf_section_data (asection * sec)
{
  struct section_list * entry;

  entry = bfd_malloc (sizeof (* entry));
  if (entry == ((void*)0))
    return;
  entry->sec = sec;
  entry->next = sections_with_arm_elf_section_data;
  entry->prev = ((void*)0);
  if (entry->next != ((void*)0))
    entry->next->prev = entry;
  sections_with_arm_elf_section_data = entry;
}
