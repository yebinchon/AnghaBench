
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* nr_events; } ;
struct hists {TYPE_1__ stats; } ;
typedef int FILE ;


 int PERF_RECORD_HEADER_MAX ;
 scalar_t__ fprintf (int *,char*,char const*,int) ;
 char* perf_event__name (int) ;
 int strcmp (char const*,char*) ;

size_t hists__fprintf_nr_events(struct hists *hists, FILE *fp)
{
 int i;
 size_t ret = 0;

 for (i = 0; i < PERF_RECORD_HEADER_MAX; ++i) {
  const char *name;

  if (hists->stats.nr_events[i] == 0)
   continue;

  name = perf_event__name(i);
  if (!strcmp(name, "UNKNOWN"))
   continue;

  ret += fprintf(fp, "%16s events: %10d\n", name,
          hists->stats.nr_events[i]);
 }

 return ret;
}
