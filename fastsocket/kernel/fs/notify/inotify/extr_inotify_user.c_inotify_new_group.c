
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* user; int * fa; scalar_t__ last_wd; int idr; int idr_lock; } ;
struct fsnotify_group {unsigned int max_events; TYPE_1__ inotify_data; } ;
struct TYPE_4__ {int inotify_devs; } ;


 int EMFILE ;
 struct fsnotify_group* ERR_PTR (int ) ;
 scalar_t__ INOTIFY_GROUP_NUM ;
 scalar_t__ IS_ERR (struct fsnotify_group*) ;
 scalar_t__ atomic_inc_return (int *) ;
 struct fsnotify_group* fsnotify_obtain_group (unsigned int,int ,int *) ;
 int fsnotify_put_group (struct fsnotify_group*) ;
 TYPE_2__* get_current_user () ;
 int idr_init (int *) ;
 int inotify_fsnotify_ops ;
 int inotify_grp_num ;
 scalar_t__ inotify_max_user_instances ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct fsnotify_group *inotify_new_group(unsigned int max_events)
{
 struct fsnotify_group *group;
 unsigned int grp_num;


 grp_num = (INOTIFY_GROUP_NUM - atomic_inc_return(&inotify_grp_num));
 group = fsnotify_obtain_group(grp_num, 0, &inotify_fsnotify_ops);
 if (IS_ERR(group))
  return group;

 group->max_events = max_events;

 spin_lock_init(&group->inotify_data.idr_lock);
 idr_init(&group->inotify_data.idr);
 group->inotify_data.last_wd = 0;
 group->inotify_data.fa = ((void*)0);
 group->inotify_data.user = get_current_user();

 if (atomic_inc_return(&group->inotify_data.user->inotify_devs) >
     inotify_max_user_instances) {
  fsnotify_put_group(group);
  return ERR_PTR(-EMFILE);
 }

 return group;
}
