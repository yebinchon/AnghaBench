
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_state {int insn_num; scalar_t__ dfa_state; } ;


 unsigned int CHAR_BIT ;
 unsigned int dfa_state_size ;

__attribute__((used)) static unsigned
bundle_state_hash (const void *bundle_state)
{
  const struct bundle_state *state = (struct bundle_state *) bundle_state;
  unsigned result, i;

  for (result = i = 0; i < dfa_state_size; i++)
    result += (((unsigned char *) state->dfa_state) [i]
        << ((i % CHAR_BIT) * 3 + CHAR_BIT));
  return result + state->insn_num;
}
