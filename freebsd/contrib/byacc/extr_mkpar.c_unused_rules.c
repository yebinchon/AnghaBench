
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ action_code; size_t number; struct TYPE_4__* next; } ;
typedef TYPE_1__ action ;


 scalar_t__ MaySuppress (TYPE_1__*) ;
 int NO_SPACE (int*) ;
 scalar_t__ REDUCE ;
 int* TMALLOC (int ,int) ;
 int Value_t ;
 int fprintf (int ,char*,char*,...) ;
 char* myname ;
 int nrules ;
 int nstates ;
 int nunused ;
 TYPE_1__** parser ;
 int* rules_used ;
 int stderr ;

__attribute__((used)) static void
unused_rules(void)
{
    int i;
    action *p;

    rules_used = TMALLOC(Value_t, nrules);
    NO_SPACE(rules_used);

    for (i = 0; i < nrules; ++i)
 rules_used[i] = 0;

    for (i = 0; i < nstates; ++i)
    {
 for (p = parser[i]; p; p = p->next)
 {
     if ((p->action_code == REDUCE) && MaySuppress(p))
  rules_used[p->number] = 1;
 }
    }

    nunused = 0;
    for (i = 3; i < nrules; ++i)
 if (!rules_used[i])
     ++nunused;

    if (nunused)
    {
 if (nunused == 1)
     fprintf(stderr, "%s: 1 rule never reduced\n", myname);
 else
     fprintf(stderr, "%s: %d rules never reduced\n", myname, nunused);
    }
}
