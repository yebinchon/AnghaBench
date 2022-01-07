
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int combine_attempts ;
 int combine_extras ;
 int combine_merges ;
 int combine_successes ;
 int fprintf (int *,char*,int,int,int,int) ;

void
dump_combine_stats (FILE *file)
{
  fprintf
    (file,
     ";; Combiner statistics: %d attempts, %d substitutions (%d requiring new space),\n;; %d successes.\n\n",
     combine_attempts, combine_merges, combine_extras, combine_successes);
}
