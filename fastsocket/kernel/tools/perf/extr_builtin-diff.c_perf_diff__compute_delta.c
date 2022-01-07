
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {double period_ratio_delta; int computed; } ;
struct TYPE_3__ {int period; } ;
struct hist_entry {TYPE_2__ diff; TYPE_1__ stat; } ;


 double get_period_percent (struct hist_entry*,int ) ;
 struct hist_entry* hist_entry__next_pair (struct hist_entry*) ;

double perf_diff__compute_delta(struct hist_entry *he)
{
 struct hist_entry *pair = hist_entry__next_pair(he);
 double new_percent = get_period_percent(he, he->stat.period);
 double old_percent = pair ? get_period_percent(pair, pair->stat.period) : 0.0;

 he->diff.period_ratio_delta = new_percent - old_percent;
 he->diff.computed = 1;
 return he->diff.period_ratio_delta;
}
