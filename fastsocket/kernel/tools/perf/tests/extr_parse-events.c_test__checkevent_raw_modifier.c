
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exclude_user; int exclude_hv; int precise_ip; int exclude_kernel; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int dummy; } ;


 int TEST_ASSERT_VAL (char*,int) ;
 struct perf_evsel* perf_evlist__first (struct perf_evlist*) ;
 int test__checkevent_raw (struct perf_evlist*) ;

__attribute__((used)) static int test__checkevent_raw_modifier(struct perf_evlist *evlist)
{
 struct perf_evsel *evsel = perf_evlist__first(evlist);

 TEST_ASSERT_VAL("wrong exclude_user", evsel->attr.exclude_user);
 TEST_ASSERT_VAL("wrong exclude_kernel", !evsel->attr.exclude_kernel);
 TEST_ASSERT_VAL("wrong exclude_hv", evsel->attr.exclude_hv);
 TEST_ASSERT_VAL("wrong precise_ip", evsel->attr.precise_ip);

 return test__checkevent_raw(evlist);
}
