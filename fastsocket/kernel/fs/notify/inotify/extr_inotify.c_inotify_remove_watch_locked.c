
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inotify_watch {int wd; } ;
struct inotify_handle {TYPE_1__* in_ops; } ;
struct TYPE_2__ {int (* handle_event ) (struct inotify_watch*,int ,int ,int ,int *,int *) ;} ;


 int IN_IGNORED ;
 int remove_watch_no_event (struct inotify_watch*,struct inotify_handle*) ;
 int stub1 (struct inotify_watch*,int ,int ,int ,int *,int *) ;

void inotify_remove_watch_locked(struct inotify_handle *ih,
     struct inotify_watch *watch)
{
 remove_watch_no_event(watch, ih);
 ih->in_ops->handle_event(watch, watch->wd, IN_IGNORED, 0, ((void*)0), ((void*)0));
}
