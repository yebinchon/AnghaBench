
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xv_pool {int lock; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct xv_pool* kzalloc (int ,int ) ;
 int roundup (int,int ) ;
 int spin_lock_init (int *) ;

struct xv_pool *xv_create_pool(void)
{
 u32 ovhd_size;
 struct xv_pool *pool;

 ovhd_size = roundup(sizeof(*pool), PAGE_SIZE);
 pool = kzalloc(ovhd_size, GFP_KERNEL);
 if (!pool)
  return ((void*)0);

 spin_lock_init(&pool->lock);

 return pool;
}
