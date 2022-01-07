
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_hpp {int size; int buf; } ;
struct hist_entry {int dummy; } ;


 double baseline_percent (struct hist_entry*) ;
 scalar_t__ hist_entry__has_pairs (struct hist_entry*) ;
 int percent_color_snprintf (int ,int ,char*,double) ;
 int scnprintf (int ,int ,char*) ;

__attribute__((used)) static int hpp__color_baseline(struct perf_hpp *hpp, struct hist_entry *he)
{
 double percent = baseline_percent(he);

 if (hist_entry__has_pairs(he))
  return percent_color_snprintf(hpp->buf, hpp->size, " %6.2f%%", percent);
 else
  return scnprintf(hpp->buf, hpp->size, "        ");
}
