
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_ca_delta {struct cost_pair* new_cp; struct cost_pair* old_cp; struct iv_ca_delta* next_change; } ;
struct cost_pair {int dummy; } ;



__attribute__((used)) static struct iv_ca_delta *
iv_ca_delta_reverse (struct iv_ca_delta *delta)
{
  struct iv_ca_delta *act, *next, *prev = ((void*)0);
  struct cost_pair *tmp;

  for (act = delta; act; act = next)
    {
      next = act->next_change;
      act->next_change = prev;
      prev = act;

      tmp = act->old_cp;
      act->old_cp = act->new_cp;
      act->new_cp = tmp;
    }

  return prev;
}
