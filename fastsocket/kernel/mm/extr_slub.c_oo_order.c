
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_order_objects {int x; } ;


 int OO_SHIFT ;

__attribute__((used)) static inline int oo_order(struct kmem_cache_order_objects x)
{
 return x.x >> OO_SHIFT;
}
