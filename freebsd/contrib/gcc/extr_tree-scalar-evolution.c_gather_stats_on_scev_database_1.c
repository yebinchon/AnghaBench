
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scev_info_str {int chrec; } ;
struct chrec_stats {int dummy; } ;


 int gather_chrec_stats (int ,struct chrec_stats*) ;

__attribute__((used)) static int
gather_stats_on_scev_database_1 (void **slot, void *stats)
{
  struct scev_info_str *entry = (struct scev_info_str *) *slot;

  gather_chrec_stats (entry->chrec, (struct chrec_stats *) stats);

  return 1;
}
