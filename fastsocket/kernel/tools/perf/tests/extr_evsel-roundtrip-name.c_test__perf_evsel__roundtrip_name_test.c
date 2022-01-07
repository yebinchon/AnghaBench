
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int perf_evsel__hw_names ;
 int perf_evsel__name_array_test (int ) ;
 int perf_evsel__roundtrip_cache_name_test () ;
 int perf_evsel__sw_names ;

int test__perf_evsel__roundtrip_name_test(void)
{
 int err = 0, ret = 0;

 err = perf_evsel__name_array_test(perf_evsel__hw_names);
 if (err)
  ret = err;

 err = perf_evsel__name_array_test(perf_evsel__sw_names);
 if (err)
  ret = err;

 err = perf_evsel__roundtrip_cache_name_test();
 if (err)
  ret = err;

 return ret;
}
