
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
double rel_stddev_stats(double stddev, double avg)
{
 double pct = 0.0;

 if (avg)
  pct = 100.0 * stddev/avg;

 return pct;
}
