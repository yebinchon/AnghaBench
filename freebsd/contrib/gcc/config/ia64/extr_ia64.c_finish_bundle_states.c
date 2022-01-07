
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bundle_state {struct bundle_state* dfa_state; struct bundle_state* allocated_states_chain; } ;


 struct bundle_state* allocated_bundle_states_chain ;
 int free (struct bundle_state*) ;

__attribute__((used)) static void
finish_bundle_states (void)
{
  struct bundle_state *curr_state, *next_state;

  for (curr_state = allocated_bundle_states_chain;
       curr_state != ((void*)0);
       curr_state = next_state)
    {
      next_state = curr_state->allocated_states_chain;
      free (curr_state->dfa_state);
      free (curr_state);
    }
}
