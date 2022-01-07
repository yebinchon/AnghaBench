
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_watch {int count; int i_list; int h_list; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int get_inotify_watch (struct inotify_watch*) ;

void inotify_init_watch(struct inotify_watch *watch)
{
 INIT_LIST_HEAD(&watch->h_list);
 INIT_LIST_HEAD(&watch->i_list);
 atomic_set(&watch->count, 0);
 get_inotify_watch(watch);
}
