
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int bp_type; int bp_addr; } ;
struct perf_evsel {struct perf_event_attr attr; } ;


 int __perf_evsel__bp_name (char*,size_t,int ,int ) ;
 int perf_evsel__add_modifiers (struct perf_evsel*,char*,size_t) ;

__attribute__((used)) static int perf_evsel__bp_name(struct perf_evsel *evsel, char *bf, size_t size)
{
 struct perf_event_attr *attr = &evsel->attr;
 int r = __perf_evsel__bp_name(bf, size, attr->bp_addr, attr->bp_type);
 return r + perf_evsel__add_modifiers(evsel, bf + r, size - r);
}
