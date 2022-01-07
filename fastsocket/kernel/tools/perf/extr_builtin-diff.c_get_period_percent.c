
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef double u64 ;
struct hist_entry {TYPE_2__* hists; } ;
struct TYPE_3__ {double total_period; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;



__attribute__((used)) static double get_period_percent(struct hist_entry *he, u64 period)
{
 u64 total = he->hists->stats.total_period;
 return (period * 100.0) / total;
}
