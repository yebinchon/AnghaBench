
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;


 int ENOMEM ;
 int RPC_BUFFER_MAXSIZE ;
 int RPC_BUFFER_POOLSIZE ;
 int RPC_TASK_POOLSIZE ;
 int SLAB_HWCACHE_ALIGN ;
 int delay_queue ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 void* mempool_create_slab_pool (int ,int ) ;
 void* rpc_buffer_mempool ;
 int rpc_buffer_slabp ;
 int rpc_destroy_mempool () ;
 int rpc_init_wait_queue (int *,char*) ;
 void* rpc_task_mempool ;
 int rpc_task_slabp ;
 int rpciod_start () ;

int
rpc_init_mempool(void)
{




 rpc_init_wait_queue(&delay_queue, "delayq");
 if (!rpciod_start())
  goto err_nomem;

 rpc_task_slabp = kmem_cache_create("rpc_tasks",
          sizeof(struct rpc_task),
          0, SLAB_HWCACHE_ALIGN,
          ((void*)0));
 if (!rpc_task_slabp)
  goto err_nomem;
 rpc_buffer_slabp = kmem_cache_create("rpc_buffers",
          RPC_BUFFER_MAXSIZE,
          0, SLAB_HWCACHE_ALIGN,
          ((void*)0));
 if (!rpc_buffer_slabp)
  goto err_nomem;
 rpc_task_mempool = mempool_create_slab_pool(RPC_TASK_POOLSIZE,
          rpc_task_slabp);
 if (!rpc_task_mempool)
  goto err_nomem;
 rpc_buffer_mempool = mempool_create_slab_pool(RPC_BUFFER_POOLSIZE,
            rpc_buffer_slabp);
 if (!rpc_buffer_mempool)
  goto err_nomem;
 return 0;
err_nomem:
 rpc_destroy_mempool();
 return -ENOMEM;
}
