
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* subvar_t ;
struct TYPE_3__ {int var; struct TYPE_3__* next; } ;
typedef int FILE ;


 int dump_flags ;
 int fprintf (int *,char*) ;
 TYPE_1__* get_subvars_for_var (int ) ;
 int print_generic_expr (int *,int ,int ) ;

void
dump_subvars_for (FILE *file, tree var)
{
  subvar_t sv = get_subvars_for_var (var);

  if (!sv)
    return;

  fprintf (file, "{ ");

  for (; sv; sv = sv->next)
    {
      print_generic_expr (file, sv->var, dump_flags);
      fprintf (file, " ");
    }

  fprintf (file, "}");
}
