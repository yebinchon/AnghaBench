
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_event {scalar_t__ data_type; int file_name; int private_data_list; int path; int refcnt; } ;


 int BUG_ON (int) ;
 scalar_t__ FSNOTIFY_EVENT_PATH ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int fsnotify_event_cachep ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct fsnotify_event*) ;
 int list_empty (int *) ;
 int path_put (int *) ;

void fsnotify_put_event(struct fsnotify_event *event)
{
 if (!event)
  return;

 if (atomic_dec_and_test(&event->refcnt)) {
  if (event->data_type == FSNOTIFY_EVENT_PATH)
   path_put(&event->path);

  BUG_ON(!list_empty(&event->private_data_list));

  kfree(event->file_name);
  kmem_cache_free(fsnotify_event_cachep, event);
 }
}
