
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef double u64 ;
struct TYPE_3__ {double total_period; } ;
struct hists {TYPE_1__ stats; } ;
struct TYPE_4__ {double period; } ;
struct hist_entry {TYPE_2__ stat; struct hists* hists; } ;


 struct hist_entry* hist_entry__next_pair (struct hist_entry*) ;

__attribute__((used)) static double baseline_percent(struct hist_entry *he)
{
 struct hist_entry *pair = hist_entry__next_pair(he);
 struct hists *pair_hists = pair ? pair->hists : ((void*)0);
 double percent = 0.0;

 if (pair) {
  u64 total_period = pair_hists->stats.total_period;
  u64 base_period = pair->stat.period;

  percent = 100.0 * base_period / total_period;
 }

 return percent;
}
