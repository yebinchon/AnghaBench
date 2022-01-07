
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int * priv; } ;


 int free (int *) ;

__attribute__((used)) static void perf_evsel__free_stat_priv(struct perf_evsel *evsel)
{
 free(evsel->priv);
 evsel->priv = ((void*)0);
}
