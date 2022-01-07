
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_order_objects {int member_0; } ;


 int OO_SHIFT ;
 int PAGE_SIZE ;

__attribute__((used)) static inline struct kmem_cache_order_objects oo_make(int order,
      unsigned long size)
{
 struct kmem_cache_order_objects x = {
  (order << OO_SHIFT) + (PAGE_SIZE << order) / size
 };

 return x;
}
