
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_candidate {int viable; struct z_candidate* next; } ;



__attribute__((used)) static struct z_candidate*
splice_viable (struct z_candidate *cands,
        bool strict_p,
        bool *any_viable_p)
{
  struct z_candidate *viable;
  struct z_candidate **last_viable;
  struct z_candidate **cand;

  viable = ((void*)0);
  last_viable = &viable;
  *any_viable_p = 0;

  cand = &cands;
  while (*cand)
    {
      struct z_candidate *c = *cand;
      if (strict_p ? c->viable == 1 : c->viable)
 {
   *last_viable = c;
   *cand = c->next;
   c->next = ((void*)0);
   last_viable = &c->next;
   *any_viable_p = 1;
 }
      else
 cand = &c->next;
    }

  return viable ? viable : cands;
}
