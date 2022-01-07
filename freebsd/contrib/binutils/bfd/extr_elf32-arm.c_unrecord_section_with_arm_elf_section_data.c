
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct section_list {struct section_list* next; TYPE_1__* prev; } ;
typedef int asection ;
struct TYPE_2__ {struct section_list* next; } ;


 struct section_list* find_arm_elf_section_entry (int *) ;
 int free (struct section_list*) ;
 struct section_list* sections_with_arm_elf_section_data ;

__attribute__((used)) static void
unrecord_section_with_arm_elf_section_data (asection * sec)
{
  struct section_list * entry;

  entry = find_arm_elf_section_entry (sec);

  if (entry)
    {
      if (entry->prev != ((void*)0))
 entry->prev->next = entry->next;
      if (entry->next != ((void*)0))
 entry->next->prev = entry->prev;
      if (entry == sections_with_arm_elf_section_data)
 sections_with_arm_elf_section_data = entry->next;
      free (entry);
    }
}
