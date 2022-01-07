
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int total_period; } ;
struct hists {TYPE_1__ stats; } ;
struct TYPE_4__ {scalar_t__ period; } ;
struct hist_entry {TYPE_2__ stat; int filtered; } ;


 int hist_entry__decay (struct hist_entry*) ;

__attribute__((used)) static bool hists__decay_entry(struct hists *hists, struct hist_entry *he)
{
 u64 prev_period = he->stat.period;

 if (prev_period == 0)
  return 1;

 hist_entry__decay(he);

 if (!he->filtered)
  hists->stats.total_period -= prev_period - he->stat.period;

 return he->stat.period == 0;
}
