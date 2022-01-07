
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int computed; int wdiff; } ;
struct TYPE_3__ {int period; } ;
struct hist_entry {TYPE_2__ diff; TYPE_1__ stat; } ;
typedef int s64 ;


 int compute_wdiff_w1 ;
 int compute_wdiff_w2 ;
 struct hist_entry* hist_entry__next_pair (struct hist_entry*) ;

s64 perf_diff__compute_wdiff(struct hist_entry *he)
{
 struct hist_entry *pair = hist_entry__next_pair(he);
 u64 new_period = he->stat.period;
 u64 old_period = pair ? pair->stat.period : 0;

 he->diff.computed = 1;

 if (!pair)
  he->diff.wdiff = 0;
 else
  he->diff.wdiff = new_period * compute_wdiff_w2 -
     old_period * compute_wdiff_w1;

 return he->diff.wdiff;
}
