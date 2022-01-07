
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_hpp {int size; int buf; } ;
struct TYPE_4__ {double total_period; } ;
struct hists {TYPE_2__ stats; } ;
struct TYPE_3__ {double period; } ;
struct hist_entry {TYPE_1__ stat; struct hists* hists; } ;


 int percent_color_snprintf (int ,int ,char*,double) ;

__attribute__((used)) static int hpp__color_overhead(struct perf_hpp *hpp, struct hist_entry *he)
{
 struct hists *hists = he->hists;
 double percent = 100.0 * he->stat.period / hists->stats.total_period;

 return percent_color_snprintf(hpp->buf, hpp->size, " %6.2f%%", percent);
}
