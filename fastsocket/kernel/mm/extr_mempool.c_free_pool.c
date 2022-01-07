
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* elements; int pool_data; int (* free ) (void*,int ) ;scalar_t__ curr_nr; } ;
typedef TYPE_1__ mempool_t ;


 int kfree (TYPE_1__*) ;
 void* remove_element (TYPE_1__*) ;
 int stub1 (void*,int ) ;

__attribute__((used)) static void free_pool(mempool_t *pool)
{
 while (pool->curr_nr) {
  void *element = remove_element(pool);
  pool->free(element, pool->pool_data);
 }
 kfree(pool->elements);
 kfree(pool);
}
