
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int automaton_t ;
typedef TYPE_1__* automata_list_el_t ;
struct TYPE_4__ {struct TYPE_4__* next_automata_list_el; int automaton; } ;


 TYPE_1__* current_automata_list ;
 TYPE_1__* get_free_automata_list_el () ;

__attribute__((used)) static void
automata_list_add (automaton_t automaton)
{
  automata_list_el_t el;

  el = get_free_automata_list_el ();
  el->automaton = automaton;
  el->next_automata_list_el = current_automata_list;
  current_automata_list = el;
}
