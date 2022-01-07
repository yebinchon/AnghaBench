
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_item {int dummy; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int SLAB_HWCACHE_ALIGN ;
 int handler_enabled ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int signal_queue_head ;
 int tasklet_enable (int *) ;
 int tipc_queue_item_cache ;
 int tipc_tasklet ;

int tipc_handler_start(void)
{
 tipc_queue_item_cache =
  kmem_cache_create("tipc_queue_items", sizeof(struct queue_item),
      0, SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!tipc_queue_item_cache)
  return -ENOMEM;

 INIT_LIST_HEAD(&signal_queue_head);
 tasklet_enable(&tipc_tasklet);
 handler_enabled = 1;
 return 0;
}
