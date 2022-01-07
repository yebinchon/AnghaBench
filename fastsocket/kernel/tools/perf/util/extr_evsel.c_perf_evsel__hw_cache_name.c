
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct perf_evsel {TYPE_1__ attr; } ;


 int __perf_evsel__hw_cache_name (int ,char*,size_t) ;
 int perf_evsel__add_modifiers (struct perf_evsel*,char*,size_t) ;

__attribute__((used)) static int perf_evsel__hw_cache_name(struct perf_evsel *evsel, char *bf, size_t size)
{
 int ret = __perf_evsel__hw_cache_name(evsel->attr.config, bf, size);
 return ret + perf_evsel__add_modifiers(evsel, bf + ret, size - ret);
}
