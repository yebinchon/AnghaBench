
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotify_watch {int wd; int inode; int h_list; int i_list; } ;
struct inotify_handle {int idr; } ;


 int idr_remove (int *,int ) ;
 int inotify_inode_watched (int ) ;
 int list_del (int *) ;
 int set_dentry_child_flags (int ,int ) ;

__attribute__((used)) static void remove_watch_no_event(struct inotify_watch *watch,
      struct inotify_handle *ih)
{
 list_del(&watch->i_list);
 list_del(&watch->h_list);

 if (!inotify_inode_watched(watch->inode))
  set_dentry_child_flags(watch->inode, 0);

 idr_remove(&ih->idr, watch->wd);
}
