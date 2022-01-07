
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct perf_hpp {int size; int buf; } ;
struct TYPE_5__ {double total_period; } ;
struct hists {TYPE_2__ stats; } ;
struct TYPE_4__ {double period_us; } ;
struct hist_entry {TYPE_1__ stat; struct hists* hists; } ;
struct TYPE_6__ {scalar_t__ field_sep; } ;


 int scnprintf (int ,int ,char const*,double) ;
 TYPE_3__ symbol_conf ;

__attribute__((used)) static int hpp__entry_overhead_us(struct perf_hpp *hpp, struct hist_entry *he)
{
 struct hists *hists = he->hists;
 double percent = 100.0 * he->stat.period_us / hists->stats.total_period;
 const char *fmt = symbol_conf.field_sep ? "%.2f" : "%6.2f%%";

 return scnprintf(hpp->buf, hpp->size, fmt, percent);
}
