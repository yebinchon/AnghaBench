
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* state_t ;
typedef unsigned int hashval_t ;
typedef TYPE_4__* alt_state_t ;
struct TYPE_8__ {TYPE_1__* state; struct TYPE_8__* next_sorted_alt_state; } ;
struct TYPE_7__ {TYPE_2__* automaton; TYPE_4__* component_states; int reservs; } ;
struct TYPE_6__ {unsigned int automaton_order_num; } ;
struct TYPE_5__ {unsigned int unique_num; } ;


 int CHAR_BIT ;
 unsigned int reserv_sets_hash_value (int ) ;

__attribute__((used)) static hashval_t
state_hash (const void *state)
{
  unsigned int hash_value;
  alt_state_t alt_state;

  if (((state_t) state)->component_states == ((void*)0))
    hash_value = reserv_sets_hash_value (((state_t) state)->reservs);
  else
    {
      hash_value = 0;
      for (alt_state = ((state_t) state)->component_states;
           alt_state != ((void*)0);
           alt_state = alt_state->next_sorted_alt_state)
        hash_value = (((hash_value >> (sizeof (unsigned) - 1) * CHAR_BIT)
                       | (hash_value << CHAR_BIT))
                      + alt_state->state->unique_num);
    }
  hash_value = (((hash_value >> (sizeof (unsigned) - 1) * CHAR_BIT)
                 | (hash_value << CHAR_BIT))
                + ((state_t) state)->automaton->automaton_order_num);
  return hash_value;
}
