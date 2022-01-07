
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat {int dummy; } ;
struct perf_evsel {int * priv; } ;


 int ENOMEM ;
 int * zalloc (int) ;

__attribute__((used)) static int perf_evsel__alloc_stat_priv(struct perf_evsel *evsel)
{
 evsel->priv = zalloc(sizeof(struct perf_stat));
 return evsel->priv == ((void*)0) ? -ENOMEM : 0;
}
