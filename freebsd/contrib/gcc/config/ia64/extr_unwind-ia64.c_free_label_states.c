
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_labeled_state {int saved_state; struct unw_labeled_state* next; } ;


 int free_label_state (struct unw_labeled_state*) ;
 int free_state_stack (int *) ;

__attribute__((used)) static void
free_label_states (struct unw_labeled_state *ls)
{
  struct unw_labeled_state *next;

  for (; ls ; ls = next)
    {
      next = ls->next;

      free_state_stack (&ls->saved_state);
      free_label_state (ls);
    }
}
