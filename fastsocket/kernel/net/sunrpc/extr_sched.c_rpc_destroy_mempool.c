
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay_queue ;
 int kmem_cache_destroy (scalar_t__) ;
 int mempool_destroy (scalar_t__) ;
 scalar_t__ rpc_buffer_mempool ;
 scalar_t__ rpc_buffer_slabp ;
 int rpc_destroy_wait_queue (int *) ;
 scalar_t__ rpc_task_mempool ;
 scalar_t__ rpc_task_slabp ;
 int rpciod_stop () ;

void
rpc_destroy_mempool(void)
{
 rpciod_stop();
 if (rpc_buffer_mempool)
  mempool_destroy(rpc_buffer_mempool);
 if (rpc_task_mempool)
  mempool_destroy(rpc_task_mempool);
 if (rpc_task_slabp)
  kmem_cache_destroy(rpc_task_slabp);
 if (rpc_buffer_slabp)
  kmem_cache_destroy(rpc_buffer_slabp);
 rpc_destroy_wait_queue(&delay_queue);
}
