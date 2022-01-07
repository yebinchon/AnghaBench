
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * mnt; int * dentry; } ;
struct TYPE_3__ {int event_list; int * event; } ;
struct fsnotify_event {scalar_t__ sync_cookie; scalar_t__ name_len; int * file_name; int * to_tell; int private_data_list; int data_type; int * inode; TYPE_2__ path; int lock; int refcnt; TYPE_1__ holder; } ;


 int FSNOTIFY_EVENT_NONE ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void initialize_event(struct fsnotify_event *event)
{
 event->holder.event = ((void*)0);
 INIT_LIST_HEAD(&event->holder.event_list);
 atomic_set(&event->refcnt, 1);

 spin_lock_init(&event->lock);

 event->path.dentry = ((void*)0);
 event->path.mnt = ((void*)0);
 event->inode = ((void*)0);
 event->data_type = FSNOTIFY_EVENT_NONE;

 INIT_LIST_HEAD(&event->private_data_list);

 event->to_tell = ((void*)0);

 event->file_name = ((void*)0);
 event->name_len = 0;

 event->sync_cookie = 0;
}
