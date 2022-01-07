
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_event {int dummy; } ;
struct fsnotify_group {int dummy; } ;
struct fsnotify_event {scalar_t__ name_len; } ;


 int EINVAL ;
 struct fsnotify_event* ERR_PTR (int ) ;
 scalar_t__ fsnotify_notify_queue_is_empty (struct fsnotify_group*) ;
 struct fsnotify_event* fsnotify_peek_notify_event (struct fsnotify_group*) ;
 int fsnotify_remove_notify_event (struct fsnotify_group*) ;
 scalar_t__ roundup (scalar_t__,size_t) ;

__attribute__((used)) static struct fsnotify_event *get_one_event(struct fsnotify_group *group,
         size_t count)
{
 size_t event_size = sizeof(struct inotify_event);
 struct fsnotify_event *event;

 if (fsnotify_notify_queue_is_empty(group))
  return ((void*)0);

 event = fsnotify_peek_notify_event(group);

 if (event->name_len)
  event_size += roundup(event->name_len + 1, event_size);

 if (event_size > count)
  return ERR_PTR(-EINVAL);



 fsnotify_remove_notify_event(group);

 return event;
}
