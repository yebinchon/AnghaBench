
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int n; int M2; } ;


 double sqrt (double) ;

double stddev_stats(struct stats *stats)
{
 double variance, variance_mean;

 if (!stats->n)
  return 0.0;

 variance = stats->M2 / (stats->n - 1);
 variance_mean = variance / stats->n;

 return sqrt(variance_mean);
}
