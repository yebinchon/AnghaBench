
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_list {int sec; } ;
typedef int asection ;
typedef int _arm_elf_section_data ;


 int * elf32_arm_section_data (int ) ;
 struct section_list* find_arm_elf_section_entry (int *) ;

__attribute__((used)) static _arm_elf_section_data *
get_arm_elf_section_data (asection * sec)
{
  struct section_list * entry;

  entry = find_arm_elf_section_entry (sec);

  if (entry)
    return elf32_arm_section_data (entry->sec);
  else
    return ((void*)0);
}
