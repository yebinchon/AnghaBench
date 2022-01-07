
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* automata_list_el_t ;
struct TYPE_2__ {scalar_t__ automaton; struct TYPE_2__* next_automata_list_el; } ;



__attribute__((used)) static int
automata_list_eq_p (const void *automata_list_1, const void *automata_list_2)
{
  automata_list_el_t automata_list_el_1;
  automata_list_el_t automata_list_el_2;

  for (automata_list_el_1 = (automata_list_el_t) automata_list_1,
  automata_list_el_2 = (automata_list_el_t) automata_list_2;
       automata_list_el_1 != ((void*)0) && automata_list_el_2 != ((void*)0);
       automata_list_el_1 = automata_list_el_1->next_automata_list_el,
  automata_list_el_2 = automata_list_el_2->next_automata_list_el)
    if (automata_list_el_1->automaton != automata_list_el_2->automaton)
      return 0;
  return automata_list_el_1 == automata_list_el_2;
}
