
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ config; int exclude_user; int exclude_kernel; int exclude_hv; int precise_ip; int exclude_host; int exclude_guest; } ;
struct perf_evsel {TYPE_1__ attr; struct perf_evsel* leader; } ;
struct perf_evlist {int nr_entries; } ;


 scalar_t__ PERF_COUNT_HW_CACHE_REFERENCES ;
 scalar_t__ PERF_COUNT_HW_CPU_CYCLES ;
 scalar_t__ PERF_COUNT_SW_PAGE_FAULTS ;
 scalar_t__ PERF_TYPE_HARDWARE ;
 scalar_t__ PERF_TYPE_SOFTWARE ;
 int TEST_ASSERT_VAL (char*,int) ;
 struct perf_evsel* perf_evlist__first (struct perf_evlist*) ;
 int perf_evsel__is_group_member (struct perf_evsel*) ;
 struct perf_evsel* perf_evsel__next (struct perf_evsel*) ;

__attribute__((used)) static int test__group2(struct perf_evlist *evlist)
{
 struct perf_evsel *evsel, *leader;

 TEST_ASSERT_VAL("wrong number of entries", 3 == evlist->nr_entries);


 evsel = leader = perf_evlist__first(evlist);
 TEST_ASSERT_VAL("wrong type", PERF_TYPE_SOFTWARE == evsel->attr.type);
 TEST_ASSERT_VAL("wrong config",
   PERF_COUNT_SW_PAGE_FAULTS == evsel->attr.config);
 TEST_ASSERT_VAL("wrong exclude_user", !evsel->attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", !evsel->attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", evsel->attr.exclude_hv);
 TEST_ASSERT_VAL("wrong exclude guest", !evsel->attr.exclude_guest);
 TEST_ASSERT_VAL("wrong exclude host", !evsel->attr.exclude_host);
 TEST_ASSERT_VAL("wrong precise_ip", !evsel->attr.precise_ip);
 TEST_ASSERT_VAL("wrong leader", !perf_evsel__is_group_member(evsel));


 evsel = perf_evsel__next(evsel);
 TEST_ASSERT_VAL("wrong type", PERF_TYPE_HARDWARE == evsel->attr.type);
 TEST_ASSERT_VAL("wrong config",
   PERF_COUNT_HW_CACHE_REFERENCES == evsel->attr.config);
 TEST_ASSERT_VAL("wrong exclude_user", !evsel->attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", evsel->attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", evsel->attr.exclude_hv);
 TEST_ASSERT_VAL("wrong exclude guest", !evsel->attr.exclude_guest);
 TEST_ASSERT_VAL("wrong exclude host", !evsel->attr.exclude_host);
 TEST_ASSERT_VAL("wrong precise_ip", !evsel->attr.precise_ip);
 TEST_ASSERT_VAL("wrong leader", evsel->leader == leader);


 evsel = perf_evsel__next(evsel);
 TEST_ASSERT_VAL("wrong type", PERF_TYPE_HARDWARE == evsel->attr.type);
 TEST_ASSERT_VAL("wrong config",
   PERF_COUNT_HW_CPU_CYCLES == evsel->attr.config);
 TEST_ASSERT_VAL("wrong exclude_user", evsel->attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", !evsel->attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", evsel->attr.exclude_hv);
 TEST_ASSERT_VAL("wrong exclude guest", !evsel->attr.exclude_guest);
 TEST_ASSERT_VAL("wrong exclude host", !evsel->attr.exclude_host);
 TEST_ASSERT_VAL("wrong precise_ip", !evsel->attr.precise_ip);
 TEST_ASSERT_VAL("wrong leader", !perf_evsel__is_group_member(evsel));

 return 0;
}
