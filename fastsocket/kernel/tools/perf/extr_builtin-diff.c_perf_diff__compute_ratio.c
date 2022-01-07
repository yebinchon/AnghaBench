
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int computed; double period_ratio; } ;
struct TYPE_3__ {double period; } ;
struct hist_entry {TYPE_2__ diff; TYPE_1__ stat; } ;


 struct hist_entry* hist_entry__next_pair (struct hist_entry*) ;

double perf_diff__compute_ratio(struct hist_entry *he)
{
 struct hist_entry *pair = hist_entry__next_pair(he);
 double new_period = he->stat.period;
 double old_period = pair ? pair->stat.period : 0;

 he->diff.computed = 1;
 he->diff.period_ratio = pair ? (new_period / old_period) : 0;
 return he->diff.period_ratio;
}
