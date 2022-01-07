
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp {int size; int buf; } ;
struct hist_entry {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ field_sep; } ;


 int perf_diff__formula (char*,int,struct hist_entry*) ;
 int scnprintf (int ,int ,char const*,char*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int hpp__entry_formula(struct perf_hpp *hpp, struct hist_entry *he)
{
 const char *fmt = symbol_conf.field_sep ? "%s" : "%-70s";
 char buf[96] = " ";

 perf_diff__formula(buf, sizeof(buf), he);
 return scnprintf(hpp->buf, hpp->size, fmt, buf);
}
