
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int hashval_t ;
typedef TYPE_2__* automata_list_el_t ;
struct TYPE_4__ {TYPE_1__* automaton; struct TYPE_4__* next_automata_list_el; } ;
struct TYPE_3__ {unsigned int automaton_order_num; } ;


 int CHAR_BIT ;

__attribute__((used)) static hashval_t
automata_list_hash (const void *automata_list)
{
  unsigned int hash_value;
  automata_list_el_t curr_automata_list_el;

  hash_value = 0;
  for (curr_automata_list_el = (automata_list_el_t) automata_list;
       curr_automata_list_el != ((void*)0);
       curr_automata_list_el = curr_automata_list_el->next_automata_list_el)
    hash_value = (((hash_value >> (sizeof (unsigned) - 1) * CHAR_BIT)
     | (hash_value << CHAR_BIT))
    + curr_automata_list_el->automaton->automaton_order_num);
  return hash_value;
}
