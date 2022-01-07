
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int notification_mutex; int notification_waitq; } ;
struct file {struct fsnotify_group* private_data; } ;
typedef int poll_table ;


 int POLLIN ;
 int POLLRDNORM ;
 int fsnotify_notify_queue_is_empty (struct fsnotify_group*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int inotify_poll(struct file *file, poll_table *wait)
{
 struct fsnotify_group *group = file->private_data;
 int ret = 0;

 poll_wait(file, &group->notification_waitq, wait);
 mutex_lock(&group->notification_mutex);
 if (!fsnotify_notify_queue_is_empty(group))
  ret = POLLIN | POLLRDNORM;
 mutex_unlock(&group->notification_mutex);

 return ret;
}
