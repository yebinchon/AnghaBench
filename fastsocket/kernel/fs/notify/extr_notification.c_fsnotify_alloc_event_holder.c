
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_event_holder {int dummy; } ;


 int GFP_KERNEL ;
 int fsnotify_event_holder_cachep ;
 struct fsnotify_event_holder* kmem_cache_alloc (int ,int ) ;

struct fsnotify_event_holder *fsnotify_alloc_event_holder(void)
{
 return kmem_cache_alloc(fsnotify_event_holder_cachep, GFP_KERNEL);
}
