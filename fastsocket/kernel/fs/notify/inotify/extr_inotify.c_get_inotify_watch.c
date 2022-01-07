
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_watch {int count; } ;


 int atomic_inc (int *) ;

void get_inotify_watch(struct inotify_watch *watch)
{
 atomic_inc(&watch->count);
}
