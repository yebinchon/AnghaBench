
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iclass {int terminal_resolved; int nsubs; size_t* subs; int nxsubs; size_t* xsubs; scalar_t__ orphan; } ;


 struct iclass** ics ;

__attribute__((used)) static void
mark_used (struct iclass *ic, int clear_terminals)
{
  int i;

  ic->orphan = 0;
  if (clear_terminals)
    ic->terminal_resolved = 1;

  for (i = 0; i < ic->nsubs; i++)
    mark_used (ics[ic->subs[i]], clear_terminals);

  for (i = 0; i < ic->nxsubs; i++)
    mark_used (ics[ic->xsubs[i]], clear_terminals);
}
