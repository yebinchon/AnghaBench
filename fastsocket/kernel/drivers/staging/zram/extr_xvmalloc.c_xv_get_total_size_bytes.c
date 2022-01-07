
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xv_pool {int total_pages; } ;


 int PAGE_SHIFT ;

u64 xv_get_total_size_bytes(struct xv_pool *pool)
{
 return pool->total_pages << PAGE_SHIFT;
}
