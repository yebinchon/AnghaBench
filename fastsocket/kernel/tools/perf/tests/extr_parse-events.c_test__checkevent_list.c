
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int config; scalar_t__ config1; scalar_t__ config2; int exclude_user; int exclude_kernel; int exclude_hv; int precise_ip; scalar_t__ sample_type; int sample_period; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int nr_entries; } ;


 scalar_t__ PERF_TP_SAMPLE_TYPE ;
 int PERF_TYPE_RAW ;
 int PERF_TYPE_TRACEPOINT ;
 int TEST_ASSERT_VAL (char*,int) ;
 struct perf_evsel* perf_evlist__first (struct perf_evlist*) ;
 struct perf_evsel* perf_evsel__next (struct perf_evsel*) ;

__attribute__((used)) static int test__checkevent_list(struct perf_evlist *evlist)
{
 struct perf_evsel *evsel = perf_evlist__first(evlist);

 TEST_ASSERT_VAL("wrong number of entries", 3 == evlist->nr_entries);


 TEST_ASSERT_VAL("wrong type", PERF_TYPE_RAW == evsel->attr.type);
 TEST_ASSERT_VAL("wrong config", 1 == evsel->attr.config);
 TEST_ASSERT_VAL("wrong config1", 0 == evsel->attr.config1);
 TEST_ASSERT_VAL("wrong config2", 0 == evsel->attr.config2);
 TEST_ASSERT_VAL("wrong exclude_user", !evsel->attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", !evsel->attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", !evsel->attr.exclude_hv);
 TEST_ASSERT_VAL("wrong precise_ip", !evsel->attr.precise_ip);


 evsel = perf_evsel__next(evsel);
 TEST_ASSERT_VAL("wrong type", PERF_TYPE_TRACEPOINT == evsel->attr.type);
 TEST_ASSERT_VAL("wrong sample_type",
  PERF_TP_SAMPLE_TYPE == evsel->attr.sample_type);
 TEST_ASSERT_VAL("wrong sample_period", 1 == evsel->attr.sample_period);
 TEST_ASSERT_VAL("wrong exclude_user", evsel->attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", !evsel->attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", evsel->attr.exclude_hv);
 TEST_ASSERT_VAL("wrong precise_ip", !evsel->attr.precise_ip);


 evsel = perf_evsel__next(evsel);
 TEST_ASSERT_VAL("wrong type", 1 == evsel->attr.type);
 TEST_ASSERT_VAL("wrong config", 1 == evsel->attr.config);
 TEST_ASSERT_VAL("wrong exclude_user", evsel->attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", evsel->attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", !evsel->attr.exclude_hv);
 TEST_ASSERT_VAL("wrong precise_ip", evsel->attr.precise_ip);

 return 0;
}
