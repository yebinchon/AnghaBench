
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsnotify_group {int notification_mutex; TYPE_1__* ops; } ;
struct fsnotify_event_private_data {int dummy; } ;
struct fsnotify_event {int lock; } ;
struct TYPE_2__ {int (* free_event_priv ) (struct fsnotify_event_private_data*) ;} ;


 int fsnotify_notify_queue_is_empty (struct fsnotify_group*) ;
 int fsnotify_put_event (struct fsnotify_event*) ;
 struct fsnotify_event* fsnotify_remove_notify_event (struct fsnotify_group*) ;
 struct fsnotify_event_private_data* fsnotify_remove_priv_from_event (struct fsnotify_group*,struct fsnotify_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct fsnotify_event_private_data*) ;

void fsnotify_flush_notify(struct fsnotify_group *group)
{
 struct fsnotify_event *event;
 struct fsnotify_event_private_data *priv;

 mutex_lock(&group->notification_mutex);
 while (!fsnotify_notify_queue_is_empty(group)) {
  event = fsnotify_remove_notify_event(group);

  if (group->ops->free_event_priv) {
   spin_lock(&event->lock);
   priv = fsnotify_remove_priv_from_event(group, event);
   spin_unlock(&event->lock);
   if (priv)
    group->ops->free_event_priv(priv);
  }
  fsnotify_put_event(event);
 }
 mutex_unlock(&group->notification_mutex);
}
