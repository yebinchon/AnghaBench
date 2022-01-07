
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_group {int refcnt; } ;


 int __fsnotify_evict_group (struct fsnotify_group*) ;
 int atomic_dec_and_mutex_lock (int *,int *) ;
 int fsnotify_destroy_group (struct fsnotify_group*) ;
 int fsnotify_grp_mutex ;
 int fsnotify_grp_srcu ;
 int fsnotify_recalc_global_mask () ;
 int mutex_unlock (int *) ;
 int synchronize_srcu (int *) ;

void fsnotify_put_group(struct fsnotify_group *group)
{
 if (!atomic_dec_and_mutex_lock(&group->refcnt, &fsnotify_grp_mutex))
  return;





 __fsnotify_evict_group(group);





 mutex_unlock(&fsnotify_grp_mutex);
 synchronize_srcu(&fsnotify_grp_srcu);


 fsnotify_recalc_global_mask();
 fsnotify_destroy_group(group);
}
