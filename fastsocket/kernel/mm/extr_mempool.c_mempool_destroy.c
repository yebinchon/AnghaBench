
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ curr_nr; scalar_t__ min_nr; } ;
typedef TYPE_1__ mempool_t ;


 int BUG_ON (int) ;
 int free_pool (TYPE_1__*) ;

void mempool_destroy(mempool_t *pool)
{

 BUG_ON(pool->curr_nr != pool->min_nr);
 free_pool(pool);
}
