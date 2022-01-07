
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_vars; int nonpointer_vars; int unified_vars_static; int unified_vars_dynamic; int iterations; int num_edges; int num_implicit_edges; } ;
typedef int FILE ;


 int TDF_STATS ;
 unsigned int VEC_length (int ,int ) ;
 int dump_flags ;
 int dump_solution_for_var (int *,unsigned int) ;
 int fprintf (int *,char*,...) ;
 TYPE_1__ stats ;
 int varinfo_t ;
 int varmap ;

void
dump_sa_points_to_info (FILE *outfile)
{
  unsigned int i;

  fprintf (outfile, "\nPoints-to sets\n\n");

  if (dump_flags & TDF_STATS)
    {
      fprintf (outfile, "Stats:\n");
      fprintf (outfile, "Total vars:               %d\n", stats.total_vars);
      fprintf (outfile, "Non-pointer vars:          %d\n",
        stats.nonpointer_vars);
      fprintf (outfile, "Statically unified vars:  %d\n",
        stats.unified_vars_static);
      fprintf (outfile, "Dynamically unified vars: %d\n",
        stats.unified_vars_dynamic);
      fprintf (outfile, "Iterations:               %d\n", stats.iterations);
      fprintf (outfile, "Number of edges:          %d\n", stats.num_edges);
      fprintf (outfile, "Number of implicit edges: %d\n",
        stats.num_implicit_edges);
    }

  for (i = 0; i < VEC_length (varinfo_t, varmap); i++)
    dump_solution_for_var (outfile, i);
}
