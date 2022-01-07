
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct perf_event_attr {int config; int type; } ;
struct list_head {int dummy; } ;
typedef int attr ;


 int EINVAL ;
 int add_event (struct list_head**,int*,struct perf_event_attr*,int *) ;
 scalar_t__ config_attr (struct perf_event_attr*,struct list_head*,int) ;
 int memset (struct perf_event_attr*,int ,int) ;

int parse_events_add_numeric(struct list_head **list, int *idx,
        u32 type, u64 config,
        struct list_head *head_config)
{
 struct perf_event_attr attr;

 memset(&attr, 0, sizeof(attr));
 attr.type = type;
 attr.config = config;

 if (head_config &&
     config_attr(&attr, head_config, 1))
  return -EINVAL;

 return add_event(list, idx, &attr, ((void*)0));
}
