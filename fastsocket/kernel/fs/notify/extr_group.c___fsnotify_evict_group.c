
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {scalar_t__ on_group_list; int group_list; } ;


 int BUG_ON (int) ;
 int fsnotify_grp_mutex ;
 int list_del_rcu (int *) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void __fsnotify_evict_group(struct fsnotify_group *group)
{
 BUG_ON(!mutex_is_locked(&fsnotify_grp_mutex));

 if (group->on_group_list)
  list_del_rcu(&group->group_list);
 group->on_group_list = 0;
}
