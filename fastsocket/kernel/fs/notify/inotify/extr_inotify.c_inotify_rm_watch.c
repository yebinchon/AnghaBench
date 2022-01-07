
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_watch {int wd; } ;
struct inotify_handle {int dummy; } ;


 int inotify_rm_wd (struct inotify_handle*,int ) ;

int inotify_rm_watch(struct inotify_handle *ih,
       struct inotify_watch *watch)
{
 return inotify_rm_wd(ih, watch->wd);
}
