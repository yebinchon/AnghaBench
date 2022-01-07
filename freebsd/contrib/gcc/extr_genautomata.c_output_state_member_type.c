
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* automaton_t ;
struct TYPE_3__ {int achieved_states_num; } ;
typedef int FILE ;


 int output_range_type (int *,int ,int ) ;

__attribute__((used)) static void
output_state_member_type (FILE *f, automaton_t automaton)
{
  output_range_type (f, 0, automaton->achieved_states_num);
}
