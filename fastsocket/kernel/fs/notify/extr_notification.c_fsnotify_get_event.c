
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_event {int refcnt; } ;


 int atomic_inc (int *) ;

void fsnotify_get_event(struct fsnotify_event *event)
{
 atomic_inc(&event->refcnt);
}
