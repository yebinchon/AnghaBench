
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chrec_stats {int dummy; } ;


 int dump_chrecs_stats (int ,struct chrec_stats*) ;
 int dump_file ;
 int gather_stats_on_scev_database_1 ;
 int htab_traverse (int ,int ,struct chrec_stats*) ;
 int reset_chrecs_counters (struct chrec_stats*) ;
 int scalar_evolution_info ;

void
gather_stats_on_scev_database (void)
{
  struct chrec_stats stats;

  if (!dump_file)
    return;

  reset_chrecs_counters (&stats);

  htab_traverse (scalar_evolution_info, gather_stats_on_scev_database_1,
   &stats);

  dump_chrecs_stats (dump_file, &stats);
}
