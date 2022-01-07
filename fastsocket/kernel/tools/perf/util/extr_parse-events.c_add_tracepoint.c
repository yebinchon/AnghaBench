
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int node; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int free (struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 struct list_head* malloc (int) ;
 struct perf_evsel* perf_evsel__newtp (char*,char*,int ) ;

__attribute__((used)) static int add_tracepoint(struct list_head **listp, int *idx,
     char *sys_name, char *evt_name)
{
 struct perf_evsel *evsel;
 struct list_head *list = *listp;

 if (!list) {
  list = malloc(sizeof(*list));
  if (!list)
   return -ENOMEM;
  INIT_LIST_HEAD(list);
 }

 evsel = perf_evsel__newtp(sys_name, evt_name, (*idx)++);
 if (!evsel) {
  free(list);
  return -ENOMEM;
 }

 list_add_tail(&evsel->node, list);
 *listp = list;
 return 0;
}
