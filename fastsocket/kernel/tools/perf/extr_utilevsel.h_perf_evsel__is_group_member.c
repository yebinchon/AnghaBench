
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int * leader; } ;



__attribute__((used)) static inline bool perf_evsel__is_group_member(const struct perf_evsel *evsel)
{
 return evsel->leader != ((void*)0);
}
