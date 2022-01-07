
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t curr_nr; void** elements; } ;
typedef TYPE_1__ mempool_t ;


 int BUG_ON (int) ;

__attribute__((used)) static void *remove_element(mempool_t *pool)
{
 BUG_ON(pool->curr_nr <= 0);
 return pool->elements[--pool->curr_nr];
}
