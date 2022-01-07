
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* user; int idr; } ;
struct fsnotify_group {TYPE_1__ inotify_data; } ;
struct TYPE_4__ {int inotify_devs; } ;


 int atomic_dec (int *) ;
 int free_uid (TYPE_2__*) ;
 int idr_callback ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,struct fsnotify_group*) ;
 int idr_remove_all (int *) ;

__attribute__((used)) static void inotify_free_group_priv(struct fsnotify_group *group)
{

 idr_for_each(&group->inotify_data.idr, idr_callback, group);
 idr_remove_all(&group->inotify_data.idr);
 idr_destroy(&group->inotify_data.idr);
 atomic_dec(&group->inotify_data.user->inotify_devs);
 free_uid(group->inotify_data.user);
}
