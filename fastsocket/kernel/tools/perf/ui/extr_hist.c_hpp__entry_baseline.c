
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp {int size; int buf; } ;
struct hist_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ field_sep; } ;


 double baseline_percent (struct hist_entry*) ;
 scalar_t__ hist_entry__has_pairs (struct hist_entry*) ;
 int scnprintf (int ,int ,char const*,...) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int hpp__entry_baseline(struct perf_hpp *hpp, struct hist_entry *he)
{
 double percent = baseline_percent(he);
 const char *fmt = symbol_conf.field_sep ? "%.2f" : " %6.2f%%";

 if (hist_entry__has_pairs(he) || symbol_conf.field_sep)
  return scnprintf(hpp->buf, hpp->size, fmt, percent);
 else
  return scnprintf(hpp->buf, hpp->size, "            ");
}
