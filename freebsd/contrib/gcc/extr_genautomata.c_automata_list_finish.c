
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * automata_list_el_t ;


 int automata_list_table ;
 int * current_automata_list ;
 int free_automata_list (int *) ;
 void** htab_find_slot (int ,void*,int) ;

__attribute__((used)) static automata_list_el_t
automata_list_finish (void)
{
  void **entry_ptr;

  if (current_automata_list == ((void*)0))
    return ((void*)0);
  entry_ptr = htab_find_slot (automata_list_table,
         (void *) current_automata_list, 1);
  if (*entry_ptr == ((void*)0))
    *entry_ptr = (void *) current_automata_list;
  else
    free_automata_list (current_automata_list);
  current_automata_list = ((void*)0);
  return (automata_list_el_t) *entry_ptr;
}
