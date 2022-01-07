
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; struct TYPE_3__* next; } ;
typedef TYPE_1__ param ;
typedef int FILE ;


 int fprintf (int *,char*,char*,char*) ;

__attribute__((used)) static void
puts_param_names(FILE * fp, param *list, int more)
{
    param *p;

    for (p = list; p; p = p->next)
    {
 fprintf(fp, "%s%s", p->name,
  ((more || p->next) ? ", " : ""));
    }
}
