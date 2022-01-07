
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long num_exprs_considered; int num_copy_prop; int num_const_prop; int num_re; int num_stmts; } ;
typedef int FILE ;


 int PERCENT (int ,long) ;
 int avail_exprs ;
 int fprintf (int *,char*,...) ;
 int htab_statistics (int *,int ) ;
 TYPE_1__ opt_stats ;

void
dump_dominator_optimization_stats (FILE *file)
{
  long n_exprs;

  fprintf (file, "Total number of statements:                   %6ld\n\n",
    opt_stats.num_stmts);
  fprintf (file, "Exprs considered for dominator optimizations: %6ld\n",
           opt_stats.num_exprs_considered);

  n_exprs = opt_stats.num_exprs_considered;
  if (n_exprs == 0)
    n_exprs = 1;

  fprintf (file, "    Redundant expressions eliminated:         %6ld (%.0f%%)\n",
    opt_stats.num_re, PERCENT (opt_stats.num_re,
          n_exprs));
  fprintf (file, "    Constants propagated:                     %6ld\n",
    opt_stats.num_const_prop);
  fprintf (file, "    Copies propagated:                        %6ld\n",
    opt_stats.num_copy_prop);

  fprintf (file, "\nHash table statistics:\n");

  fprintf (file, "    avail_exprs: ");
  htab_statistics (file, avail_exprs);
}
