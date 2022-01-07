
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
typedef int ainsn_t ;
struct TYPE_4__ {int min_insn_issue_delay; } ;


 int curr_state_pass_num ;
 int min_issue_delay_pass_states (TYPE_1__*,int ) ;

__attribute__((used)) static int
min_issue_delay (state_t state, ainsn_t ainsn)
{
  curr_state_pass_num++;
  state->min_insn_issue_delay = min_issue_delay_pass_states (state, ainsn);
  return state->min_insn_issue_delay;
}
