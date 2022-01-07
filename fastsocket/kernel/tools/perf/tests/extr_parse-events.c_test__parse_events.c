
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int TEST_EVENTS (int ) ;
 int test__events ;
 int test__events_pmu ;
 int test__terms ;
 scalar_t__ test_pmu () ;
 int test_pmu_events () ;
 int test_terms (int ,int ) ;

int test__parse_events(void)
{
 int ret1, ret2 = 0;
 do { ret1 = test_events(test__events, ARRAY_SIZE(test__events)); if (!ret2) ret2 = ret1; } while (0);

 if (test_pmu())
  do { ret1 = test_events(test__events_pmu, ARRAY_SIZE(test__events_pmu)); if (!ret2) ret2 = ret1; } while (0);

 if (test_pmu()) {
  int ret = test_pmu_events();
  if (ret)
   return ret;
 }

 ret1 = test_terms(test__terms, ARRAY_SIZE(test__terms));
 if (!ret2)
  ret2 = ret1;

 return ret2;
}
