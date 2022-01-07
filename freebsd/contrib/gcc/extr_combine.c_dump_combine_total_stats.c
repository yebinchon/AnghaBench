
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int,int,int,int) ;
 int total_attempts ;
 int total_extras ;
 int total_merges ;
 int total_successes ;

void
dump_combine_total_stats (FILE *file)
{
  fprintf
    (file,
     "\n;; Combiner totals: %d attempts, %d substitutions (%d requiring new space),\n;; %d successes.\n",
     total_attempts, total_merges, total_extras, total_successes);
}
