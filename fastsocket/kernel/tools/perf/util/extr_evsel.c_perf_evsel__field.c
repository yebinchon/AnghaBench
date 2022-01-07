
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int tp_format; } ;
struct format_field {int dummy; } ;


 struct format_field* pevent_find_field (int ,char const*) ;

struct format_field *perf_evsel__field(struct perf_evsel *evsel, const char *name)
{
 return pevent_find_field(evsel->tp_format, name);
}
