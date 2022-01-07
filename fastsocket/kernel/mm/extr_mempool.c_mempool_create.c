
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mempool_t ;
typedef int mempool_free_t ;
typedef int mempool_alloc_t ;


 int * mempool_create_node (int,int *,int *,void*,int) ;

mempool_t *mempool_create(int min_nr, mempool_alloc_t *alloc_fn,
    mempool_free_t *free_fn, void *pool_data)
{
 return mempool_create_node(min_nr,alloc_fn,free_fn, pool_data,-1);
}
