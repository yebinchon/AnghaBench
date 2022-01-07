
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_hpp {int size; int buf; } ;
struct TYPE_3__ {double period_ratio; scalar_t__ computed; } ;
struct hist_entry {TYPE_1__ diff; } ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ field_sep; } ;


 double perf_diff__compute_ratio (struct hist_entry*) ;
 int scnprintf (char*,int,char const*,...) ;
 TYPE_2__ symbol_conf ;

__attribute__((used)) static int hpp__entry_ratio(struct perf_hpp *hpp, struct hist_entry *he)
{
 const char *fmt = symbol_conf.field_sep ? "%s" : "%14s";
 char buf[32] = " ";
 double ratio;

 if (he->diff.computed)
  ratio = he->diff.period_ratio;
 else
  ratio = perf_diff__compute_ratio(he);

 if (ratio > 0.0)
  scnprintf(buf, sizeof(buf), "%+14.6F", ratio);

 return scnprintf(hpp->buf, hpp->size, fmt, buf);
}
