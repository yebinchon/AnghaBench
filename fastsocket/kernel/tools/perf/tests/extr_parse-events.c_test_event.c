
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test__event_st {int (* check ) (struct perf_evlist*) ;int name; } ;
struct perf_evlist {int dummy; } ;


 int ENOMEM ;
 int parse_events (struct perf_evlist*,int ,int ) ;
 int perf_evlist__delete (struct perf_evlist*) ;
 struct perf_evlist* perf_evlist__new (int *,int *) ;
 int pr_debug (char*,int ,int) ;
 int stub1 (struct perf_evlist*) ;

__attribute__((used)) static int test_event(struct test__event_st *e)
{
 struct perf_evlist *evlist;
 int ret;

 evlist = perf_evlist__new(((void*)0), ((void*)0));
 if (evlist == ((void*)0))
  return -ENOMEM;

 ret = parse_events(evlist, e->name, 0);
 if (ret) {
  pr_debug("failed to parse event '%s', err %d\n",
    e->name, ret);
  return ret;
 }

 ret = e->check(evlist);
 perf_evlist__delete(evlist);

 return ret;
}
