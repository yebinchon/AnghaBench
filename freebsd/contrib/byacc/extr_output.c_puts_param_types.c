
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* type; char* name; struct TYPE_3__* next; int type2; } ;
typedef TYPE_1__ param ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
puts_param_types(FILE * fp, param *list, int more)
{
    param *p;

    if (list != 0)
    {
 for (p = list; p; p = p->next)
 {
     size_t len_type = strlen(p->type);
     fprintf(fp, "%s%s%s%s%s", p->type,
      (((len_type != 0) && (p->type[len_type - 1] == '*'))
       ? ""
       : " "),
      p->name, p->type2,
      ((more || p->next) ? ", " : ""));
 }
    }
    else
    {
 if (!more)
     fprintf(fp, "void");
    }
}
