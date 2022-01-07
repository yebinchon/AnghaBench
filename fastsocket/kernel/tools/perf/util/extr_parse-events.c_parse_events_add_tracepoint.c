
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int add_tracepoint_event (struct list_head**,int*,char*,char*) ;
 int add_tracepoint_multi_sys (struct list_head**,int*,char*,char*) ;
 int debugfs_valid_mountpoint (int ) ;
 scalar_t__ strpbrk (char*,char*) ;
 int tracing_events_path ;

int parse_events_add_tracepoint(struct list_head **list, int *idx,
    char *sys, char *event)
{
 int ret;

 ret = debugfs_valid_mountpoint(tracing_events_path);
 if (ret)
  return ret;

 if (strpbrk(sys, "*?"))
  return add_tracepoint_multi_sys(list, idx, sys, event);
 else
  return add_tracepoint_event(list, idx, sys, event);
}
