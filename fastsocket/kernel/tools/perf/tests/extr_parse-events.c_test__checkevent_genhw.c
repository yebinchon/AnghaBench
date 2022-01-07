
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int config; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int nr_entries; } ;


 scalar_t__ PERF_TYPE_HW_CACHE ;
 int TEST_ASSERT_VAL (char*,int) ;
 struct perf_evsel* perf_evlist__first (struct perf_evlist*) ;

__attribute__((used)) static int test__checkevent_genhw(struct perf_evlist *evlist)
{
 struct perf_evsel *evsel = perf_evlist__first(evlist);

 TEST_ASSERT_VAL("wrong number of entries", 1 == evlist->nr_entries);
 TEST_ASSERT_VAL("wrong type", PERF_TYPE_HW_CACHE == evsel->attr.type);
 TEST_ASSERT_VAL("wrong config", (1 << 16) == evsel->attr.config);
 return 0;
}
