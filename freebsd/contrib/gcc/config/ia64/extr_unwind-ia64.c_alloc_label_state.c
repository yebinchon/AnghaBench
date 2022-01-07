
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_labeled_state {int dummy; } ;


 int atomic_alloc (int *) ;
 struct unw_labeled_state* emergency_labeled_state ;
 int emergency_labeled_state_free ;
 int labeled_state_alloced ;
 struct unw_labeled_state* malloc (int) ;

__attribute__((used)) static struct unw_labeled_state *
alloc_label_state (void)
{
  struct unw_labeled_state *ls;





  ls = malloc(sizeof(struct unw_labeled_state));
  if (!ls)
    {
      int n = atomic_alloc (&emergency_labeled_state_free);
      if (n >= 0)
 ls = &emergency_labeled_state[n];
    }

  return ls;
}
