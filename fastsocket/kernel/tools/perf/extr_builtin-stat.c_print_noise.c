
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat {int * res_stats; } ;
struct perf_evsel {struct perf_stat* priv; } ;


 int print_noise_pct (int ,double) ;
 int run_count ;
 int stddev_stats (int *) ;

__attribute__((used)) static void print_noise(struct perf_evsel *evsel, double avg)
{
 struct perf_stat *ps;

 if (run_count == 1)
  return;

 ps = evsel->priv;
 print_noise_pct(stddev_stats(&ps->res_stats[0]), avg);
}
