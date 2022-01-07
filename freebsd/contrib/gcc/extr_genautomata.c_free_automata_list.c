
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* automata_list_el_t ;
struct TYPE_4__ {struct TYPE_4__* next_automata_list_el; } ;


 int free_automata_list_el (TYPE_1__*) ;

__attribute__((used)) static void
free_automata_list (automata_list_el_t automata_list)
{
  automata_list_el_t curr_automata_list_el;
  automata_list_el_t next_automata_list_el;

  for (curr_automata_list_el = automata_list;
       curr_automata_list_el != ((void*)0);
       curr_automata_list_el = next_automata_list_el)
    {
      next_automata_list_el = curr_automata_list_el->next_automata_list_el;
      free_automata_list_el (curr_automata_list_el);
    }
}
