
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exclude_host; int exclude_guest; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int dummy; } ;


 int TEST_ASSERT_VAL (char*,int) ;
 struct perf_evsel* perf_evlist__first (struct perf_evlist*) ;
 int test__checkevent_symbolic_name (struct perf_evlist*) ;

__attribute__((used)) static int test__checkevent_exclude_host_modifier(struct perf_evlist *evlist)
{
 struct perf_evsel *evsel = perf_evlist__first(evlist);

 TEST_ASSERT_VAL("wrong exclude guest", !evsel->attr.exclude_guest);
 TEST_ASSERT_VAL("wrong exclude host", evsel->attr.exclude_host);

 return test__checkevent_symbolic_name(evlist);
}
