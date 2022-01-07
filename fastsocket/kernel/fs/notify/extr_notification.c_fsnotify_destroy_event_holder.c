
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_event_holder {int dummy; } ;


 int fsnotify_event_holder_cachep ;
 int kmem_cache_free (int ,struct fsnotify_event_holder*) ;

void fsnotify_destroy_event_holder(struct fsnotify_event_holder *holder)
{
 kmem_cache_free(fsnotify_event_holder_cachep, holder);
}
