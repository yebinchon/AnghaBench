
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test__event_st {int name; } ;


 int pr_debug (char*,unsigned int,int ) ;
 int test_event (struct test__event_st*) ;

__attribute__((used)) static int test_events(struct test__event_st *events, unsigned cnt)
{
 int ret1, ret2 = 0;
 unsigned i;

 for (i = 0; i < cnt; i++) {
  struct test__event_st *e = &events[i];

  pr_debug("running test %d '%s'\n", i, e->name);
  ret1 = test_event(e);
  if (ret1)
   ret2 = ret1;
 }

 return ret2;
}
