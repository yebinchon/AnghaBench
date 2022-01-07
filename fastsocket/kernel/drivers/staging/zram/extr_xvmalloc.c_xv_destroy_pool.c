
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xv_pool {int dummy; } ;


 int kfree (struct xv_pool*) ;

void xv_destroy_pool(struct xv_pool *pool)
{
 kfree(pool);
}
