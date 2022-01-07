
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
struct TYPE_4__ {scalar_t__ automaton; int reservs; } ;


 int gcc_assert (int) ;
 int reserv_sets_are_intersected (int ,int ) ;

__attribute__((used)) static int
intersected_state_reservs_p (state_t state1, state_t state2)
{
  gcc_assert (state1->automaton == state2->automaton);
  return reserv_sets_are_intersected (state1->reservs, state2->reservs);
}
