
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int notification_list; int notification_mutex; } ;


 int BUG_ON (int) ;
 scalar_t__ list_empty (int *) ;
 int mutex_is_locked (int *) ;

bool fsnotify_notify_queue_is_empty(struct fsnotify_group *group)
{
 BUG_ON(!mutex_is_locked(&group->notification_mutex));
 return list_empty(&group->notification_list) ? 1 : 0;
}
