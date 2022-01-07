
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_state {scalar_t__ insn_num; int dfa_state; } ;


 int dfa_state_size ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static int
bundle_state_eq_p (const void *bundle_state_1, const void *bundle_state_2)
{
  const struct bundle_state * state1 = (struct bundle_state *) bundle_state_1;
  const struct bundle_state * state2 = (struct bundle_state *) bundle_state_2;

  return (state1->insn_num == state2->insn_num
   && memcmp (state1->dfa_state, state2->dfa_state,
       dfa_state_size) == 0);
}
