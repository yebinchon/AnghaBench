
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* alt_state_t ;
struct TYPE_4__ {struct TYPE_4__* next_alt_state; } ;


 TYPE_1__* first_free_alt_state ;

__attribute__((used)) static void
free_alt_state (alt_state_t alt_state)
{
  if (alt_state == ((void*)0))
    return;
  alt_state->next_alt_state = first_free_alt_state;
  first_free_alt_state = alt_state;
}
