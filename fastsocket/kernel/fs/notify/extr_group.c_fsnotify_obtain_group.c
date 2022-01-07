
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_ops {int dummy; } ;
struct fsnotify_group {int on_group_list; unsigned int group_num; int num_marks; int group_list; struct fsnotify_ops const* ops; int mark_entries; int mark_lock; int max_events; scalar_t__ q_len; int notification_waitq; int notification_list; int notification_mutex; scalar_t__ mask; int refcnt; } ;
typedef scalar_t__ __u32 ;


 int ENOMEM ;
 struct fsnotify_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int UINT_MAX ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 struct fsnotify_group* fsnotify_find_group (unsigned int,scalar_t__,struct fsnotify_ops const*) ;
 int fsnotify_groups ;
 int fsnotify_grp_mutex ;
 int fsnotify_put_group (struct fsnotify_group*) ;
 int fsnotify_recalc_global_mask () ;
 int init_waitqueue_head (int *) ;
 struct fsnotify_group* kmalloc (int,int ) ;
 int list_add_rcu (int *,int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;

struct fsnotify_group *fsnotify_obtain_group(unsigned int group_num, __u32 mask,
          const struct fsnotify_ops *ops)
{
 struct fsnotify_group *group, *tgroup;


 group = kmalloc(sizeof(struct fsnotify_group), GFP_KERNEL);
 if (!group)
  return ERR_PTR(-ENOMEM);

 atomic_set(&group->refcnt, 1);

 group->on_group_list = 0;
 group->group_num = group_num;
 group->mask = mask;

 mutex_init(&group->notification_mutex);
 INIT_LIST_HEAD(&group->notification_list);
 init_waitqueue_head(&group->notification_waitq);
 group->q_len = 0;
 group->max_events = UINT_MAX;

 spin_lock_init(&group->mark_lock);
 atomic_set(&group->num_marks, 0);
 INIT_LIST_HEAD(&group->mark_entries);

 group->ops = ops;

 mutex_lock(&fsnotify_grp_mutex);
 tgroup = fsnotify_find_group(group_num, mask, ops);
 if (tgroup) {

  mutex_unlock(&fsnotify_grp_mutex);

  fsnotify_put_group(group);
  return tgroup;
 }


 list_add_rcu(&group->group_list, &fsnotify_groups);
 group->on_group_list = 1;

 atomic_inc(&group->num_marks);

 mutex_unlock(&fsnotify_grp_mutex);

 if (mask)
  fsnotify_recalc_global_mask();

 return group;
}
