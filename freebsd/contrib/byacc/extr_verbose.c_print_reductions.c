
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ action_code; int suppressed; int number; size_t symbol; struct TYPE_3__* next; } ;
typedef TYPE_1__ action ;


 scalar_t__ REDUCE ;
 scalar_t__ backtrack ;
 int fprintf (int ,char*,...) ;
 char** symbol_name ;
 int verbose_file ;

__attribute__((used)) static void
print_reductions(action *p, int defred2)
{
    int k, anyreds;
    action *q;

    anyreds = 0;
    for (q = p; q; q = q->next)
    {
 if (q->action_code == REDUCE && q->suppressed < 2)
 {
     anyreds = 1;
     break;
 }
    }

    if (anyreds == 0)
 fprintf(verbose_file, "\t.  error\n");
    else
    {
 for (; p; p = p->next)
 {
     if (p->action_code == REDUCE && p->number != defred2)
     {
  k = p->number - 2;
  if (p->suppressed == 0)
      fprintf(verbose_file, "\t%s  reduce %d\n",
       symbol_name[p->symbol], k);





     }
 }

 if (defred2 > 0)
     fprintf(verbose_file, "\t.  reduce %d\n", defred2 - 2);
    }
}
