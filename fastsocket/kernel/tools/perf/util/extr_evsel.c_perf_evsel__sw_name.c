
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct perf_evsel {TYPE_1__ attr; } ;


 int __perf_evsel__sw_name (int ) ;
 int perf_evsel__add_modifiers (struct perf_evsel*,char*,size_t) ;
 int scnprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static int perf_evsel__sw_name(struct perf_evsel *evsel, char *bf, size_t size)
{
 int r = scnprintf(bf, size, "%s", __perf_evsel__sw_name(evsel->attr.config));
 return r + perf_evsel__add_modifiers(evsel, bf + r, size - r);
}
