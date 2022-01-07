
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* automaton_t ;
struct TYPE_4__ {scalar_t__ achieved_states_num; } ;


 scalar_t__ curr_state_order_num ;
 int pass_states (TYPE_1__*,int ) ;
 int set_order_state_num ;

__attribute__((used)) static void
enumerate_states (automaton_t automaton)
{
  curr_state_order_num = 0;
  pass_states (automaton, set_order_state_num);
  automaton->achieved_states_num = curr_state_order_num;
}
