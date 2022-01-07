
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_list {struct section_list* prev; int * sec; struct section_list* next; } ;
typedef int asection ;


 struct section_list* sections_with_arm_elf_section_data ;

__attribute__((used)) static struct section_list *
find_arm_elf_section_entry (asection * sec)
{
  struct section_list * entry;
  static struct section_list * last_entry = ((void*)0);





  entry = sections_with_arm_elf_section_data;
  if (last_entry != ((void*)0))
    {
      if (last_entry->sec == sec)
 entry = last_entry;
      else if (last_entry->next != ((void*)0)
        && last_entry->next->sec == sec)
 entry = last_entry->next;
    }

  for (; entry; entry = entry->next)
    if (entry->sec == sec)
      break;

  if (entry)




    last_entry = entry->prev;

  return entry;
}
