
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_hpp {char* buf; size_t size; } ;
struct hists {int dummy; } ;
struct hist_entry {int dummy; } ;
typedef int bf ;
struct TYPE_2__ {scalar_t__ use_callchain; int field_sep; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 scalar_t__ hist_entry__callchain_fprintf (struct hist_entry*,struct hists*,int *) ;
 int hist_entry__period_snprintf (struct perf_hpp*,struct hist_entry*,int) ;
 int hist_entry__sort_snprintf (struct hist_entry*,char*,size_t,struct hists*) ;
 TYPE_1__ symbol_conf ;

__attribute__((used)) static int hist_entry__fprintf(struct hist_entry *he, size_t size,
          struct hists *hists, FILE *fp)
{
 char bf[512];
 int ret;
 struct perf_hpp hpp = {
  .buf = bf,
  .size = size,
 };
 bool color = !symbol_conf.field_sep;

 if (size == 0 || size > sizeof(bf))
  size = hpp.size = sizeof(bf);

 ret = hist_entry__period_snprintf(&hpp, he, color);
 hist_entry__sort_snprintf(he, bf + ret, size - ret, hists);

 ret = fprintf(fp, "%s\n", bf);

 if (symbol_conf.use_callchain)
  ret += hist_entry__callchain_fprintf(he, hists, fp);

 return ret;
}
