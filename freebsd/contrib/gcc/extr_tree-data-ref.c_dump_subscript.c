
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct subscript {int dummy; } ;
typedef int FILE ;


 scalar_t__ SUB_CONFLICTS_IN_A (struct subscript*) ;
 scalar_t__ SUB_CONFLICTS_IN_B (struct subscript*) ;
 scalar_t__ SUB_DISTANCE (struct subscript*) ;
 scalar_t__ SUB_LAST_CONFLICT (struct subscript*) ;
 scalar_t__ chrec_contains_undetermined (scalar_t__) ;
 scalar_t__ chrec_known ;
 int fprintf (int *,char*) ;
 int print_generic_stmt (int *,scalar_t__,int ) ;

void
dump_subscript (FILE *outf, struct subscript *subscript)
{
  tree chrec = SUB_CONFLICTS_IN_A (subscript);

  fprintf (outf, "\n (subscript \n");
  fprintf (outf, "  iterations_that_access_an_element_twice_in_A: ");
  print_generic_stmt (outf, chrec, 0);
  if (chrec == chrec_known)
    fprintf (outf, "    (no dependence)\n");
  else if (chrec_contains_undetermined (chrec))
    fprintf (outf, "    (don't know)\n");
  else
    {
      tree last_iteration = SUB_LAST_CONFLICT (subscript);
      fprintf (outf, "  last_conflict: ");
      print_generic_stmt (outf, last_iteration, 0);
    }

  chrec = SUB_CONFLICTS_IN_B (subscript);
  fprintf (outf, "  iterations_that_access_an_element_twice_in_B: ");
  print_generic_stmt (outf, chrec, 0);
  if (chrec == chrec_known)
    fprintf (outf, "    (no dependence)\n");
  else if (chrec_contains_undetermined (chrec))
    fprintf (outf, "    (don't know)\n");
  else
    {
      tree last_iteration = SUB_LAST_CONFLICT (subscript);
      fprintf (outf, "  last_conflict: ");
      print_generic_stmt (outf, last_iteration, 0);
    }

  fprintf (outf, "  (Subscript distance: ");
  print_generic_stmt (outf, SUB_DISTANCE (subscript), 0);
  fprintf (outf, "  )\n");
  fprintf (outf, " )\n");
}
