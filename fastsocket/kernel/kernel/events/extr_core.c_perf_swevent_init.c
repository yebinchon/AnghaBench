
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int config; scalar_t__ type; } ;
struct perf_event {int destroy; int parent; TYPE_1__ attr; } ;


 int ENOENT ;

 int PERF_COUNT_SW_MAX ;

 scalar_t__ PERF_TYPE_SOFTWARE ;
 int atomic_inc (int *) ;
 int * perf_swevent_enabled ;
 int sw_perf_event_destroy ;
 int swevent_hlist_get (struct perf_event*) ;

__attribute__((used)) static int perf_swevent_init(struct perf_event *event)
{
 u64 event_id = event->attr.config;

 if (event->attr.type != PERF_TYPE_SOFTWARE)
  return -ENOENT;

 switch (event_id) {
 case 129:
 case 128:
  return -ENOENT;

 default:
  break;
 }

 if (event_id >= PERF_COUNT_SW_MAX)
  return -ENOENT;

 if (!event->parent) {
  int err;

  err = swevent_hlist_get(event);
  if (err)
   return err;

  atomic_inc(&perf_swevent_enabled[event_id]);
  event->destroy = sw_perf_event_destroy;
 }

 return 0;
}
