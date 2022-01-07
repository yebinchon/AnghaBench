
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* kmalloc (size_t,int ) ;

void *mempool_kmalloc(gfp_t gfp_mask, void *pool_data)
{
 size_t size = (size_t)pool_data;
 return kmalloc(size, gfp_mask);
}
