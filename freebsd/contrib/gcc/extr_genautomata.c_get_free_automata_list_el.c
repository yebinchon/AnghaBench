
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct automata_list_el {int dummy; } ;
typedef TYPE_1__* automata_list_el_t ;
struct TYPE_5__ {struct TYPE_5__* next_automata_list_el; int * automaton; } ;


 TYPE_1__* create_node (int) ;
 TYPE_1__* first_free_automata_list_el ;

__attribute__((used)) static automata_list_el_t
get_free_automata_list_el (void)
{
  automata_list_el_t result;

  if (first_free_automata_list_el != ((void*)0))
    {
      result = first_free_automata_list_el;
      first_free_automata_list_el
 = first_free_automata_list_el->next_automata_list_el;
    }
  else
    result = create_node (sizeof (struct automata_list_el));
  result->automaton = ((void*)0);
  result->next_automata_list_el = ((void*)0);
  return result;
}
