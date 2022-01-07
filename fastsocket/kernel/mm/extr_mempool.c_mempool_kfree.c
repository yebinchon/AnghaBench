
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void*) ;

void mempool_kfree(void *element, void *pool_data)
{
 kfree(element);
}
