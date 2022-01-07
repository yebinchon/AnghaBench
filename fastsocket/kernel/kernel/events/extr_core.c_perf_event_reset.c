
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int count; } ;


 int local64_set (int *,int ) ;
 int perf_event_read (struct perf_event*) ;
 int perf_event_update_userpage (struct perf_event*) ;

__attribute__((used)) static void perf_event_reset(struct perf_event *event)
{
 (void)perf_event_read(event);
 local64_set(&event->count, 0);
 perf_event_update_userpage(event);
}
