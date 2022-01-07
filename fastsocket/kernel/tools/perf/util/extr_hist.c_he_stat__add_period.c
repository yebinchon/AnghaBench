
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct he_stat {int nr_events; int period; } ;



__attribute__((used)) static void he_stat__add_period(struct he_stat *he_stat, u64 period)
{
 he_stat->period += period;
 he_stat->nr_events += 1;
}
