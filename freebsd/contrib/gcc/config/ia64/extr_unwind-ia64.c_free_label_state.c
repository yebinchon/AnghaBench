
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_labeled_state {int dummy; } ;


 scalar_t__ PTR_IN (struct unw_labeled_state*,struct unw_labeled_state*) ;
 int atomic_free (int *,struct unw_labeled_state*) ;
 struct unw_labeled_state* emergency_labeled_state ;
 int emergency_labeled_state_free ;
 int free (struct unw_labeled_state*) ;
 int labeled_state_alloced ;

__attribute__((used)) static void
free_label_state (struct unw_labeled_state *ls)
{




  if (PTR_IN (emergency_labeled_state, ls))
    atomic_free (&emergency_labeled_state_free, emergency_labeled_state - ls);
  else
    free (ls);
}
