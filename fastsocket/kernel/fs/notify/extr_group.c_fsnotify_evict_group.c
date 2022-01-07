
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int dummy; } ;


 int __fsnotify_evict_group (struct fsnotify_group*) ;
 int fsnotify_grp_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void fsnotify_evict_group(struct fsnotify_group *group)
{
 mutex_lock(&fsnotify_grp_mutex);
 __fsnotify_evict_group(group);
 mutex_unlock(&fsnotify_grp_mutex);
}
