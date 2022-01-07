
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_evsel {struct perf_evsel* name; TYPE_1__* tp_format; } ;
struct perf_event_attr {int sample_type; int sample_period; int config; int type; } ;
struct TYPE_2__ {int id; } ;


 int PERF_SAMPLE_CPU ;
 int PERF_SAMPLE_PERIOD ;
 int PERF_SAMPLE_RAW ;
 int PERF_SAMPLE_TIME ;
 int PERF_TYPE_TRACEPOINT ;
 scalar_t__ asprintf (struct perf_evsel**,char*,char const*,char const*) ;
 int event_attr_init (struct perf_event_attr*) ;
 TYPE_1__* event_format__new (char const*,char const*) ;
 int free (struct perf_evsel*) ;
 int perf_evsel__init (struct perf_evsel*,struct perf_event_attr*,int) ;
 struct perf_evsel* zalloc (int) ;

struct perf_evsel *perf_evsel__newtp(const char *sys, const char *name, int idx)
{
 struct perf_evsel *evsel = zalloc(sizeof(*evsel));

 if (evsel != ((void*)0)) {
  struct perf_event_attr attr = {
   .type = PERF_TYPE_TRACEPOINT,
   .sample_type = (PERF_SAMPLE_RAW | PERF_SAMPLE_TIME |
       PERF_SAMPLE_CPU | PERF_SAMPLE_PERIOD),
  };

  if (asprintf(&evsel->name, "%s:%s", sys, name) < 0)
   goto out_free;

  evsel->tp_format = event_format__new(sys, name);
  if (evsel->tp_format == ((void*)0))
   goto out_free;

  event_attr_init(&attr);
  attr.config = evsel->tp_format->id;
  attr.sample_period = 1;
  perf_evsel__init(evsel, &attr, idx);
 }

 return evsel;

out_free:
 free(evsel->name);
 free(evsel);
 return ((void*)0);
}
