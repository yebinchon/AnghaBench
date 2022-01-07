
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_use {int id; int type; scalar_t__ related_cands; int iv; int * op_p; int stmt; } ;
typedef int FILE ;


 int TDF_SLIM ;



 int dump_bitmap (int *,scalar_t__) ;
 int dump_iv (int *,int ) ;
 int fprintf (int *,char*,...) ;
 int gcc_unreachable () ;
 int print_generic_expr (int *,int ,int ) ;

void
dump_use (FILE *file, struct iv_use *use)
{
  fprintf (file, "use %d\n", use->id);

  switch (use->type)
    {
    case 128:
      fprintf (file, "  generic\n");
      break;

    case 130:
      fprintf (file, "  address\n");
      break;

    case 129:
      fprintf (file, "  compare\n");
      break;

    default:
      gcc_unreachable ();
    }

  fprintf (file, "  in statement ");
  print_generic_expr (file, use->stmt, TDF_SLIM);
  fprintf (file, "\n");

  fprintf (file, "  at position ");
  if (use->op_p)
    print_generic_expr (file, *use->op_p, TDF_SLIM);
  fprintf (file, "\n");

  dump_iv (file, use->iv);

  if (use->related_cands)
    {
      fprintf (file, "  related candidates ");
      dump_bitmap (file, use->related_cands);
    }
}
