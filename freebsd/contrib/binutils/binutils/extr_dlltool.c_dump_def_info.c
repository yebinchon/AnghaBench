
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; char* internal_name; int ordinal; scalar_t__ private; scalar_t__ noname; scalar_t__ data; scalar_t__ constant; struct TYPE_3__* next; } ;
typedef TYPE_1__ export_type ;
typedef int FILE ;


 char* ASM_C ;
 TYPE_1__* d_exports ;
 int fprintf (int *,char*,...) ;
 char** oav ;

__attribute__((used)) static void
dump_def_info (FILE *f)
{
  int i;
  export_type *exp;
  fprintf (f, "%s ", ASM_C);
  for (i = 0; oav[i]; i++)
    fprintf (f, "%s ", oav[i]);
  fprintf (f, "\n");
  for (i = 0, exp = d_exports; exp; i++, exp = exp->next)
    {
      fprintf (f, "%s  %d = %s %s @ %d %s%s%s%s\n",
        ASM_C,
        i,
        exp->name,
        exp->internal_name,
        exp->ordinal,
        exp->noname ? "NONAME " : "",
        exp->private ? "PRIVATE " : "",
        exp->constant ? "CONSTANT" : "",
        exp->data ? "DATA" : "");
    }
}
