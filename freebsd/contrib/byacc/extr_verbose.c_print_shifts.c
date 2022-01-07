
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int suppressed; scalar_t__ action_code; size_t symbol; int number; struct TYPE_3__* next; } ;
typedef TYPE_1__ action ;


 scalar_t__ SHIFT ;
 scalar_t__ backtrack ;
 int fprintf (int ,char*,char*,int) ;
 char** symbol_name ;
 int verbose_file ;

__attribute__((used)) static void
print_shifts(action *p)
{
    int count;
    action *q;

    count = 0;
    for (q = p; q; q = q->next)
    {
 if (q->suppressed < 2 && q->action_code == SHIFT)
     ++count;
    }

    if (count > 0)
    {
 for (; p; p = p->next)
 {
     if (p->action_code == SHIFT && p->suppressed == 0)
  fprintf(verbose_file, "\t%s  shift %d\n",
   symbol_name[p->symbol], p->number);





 }
    }
}
