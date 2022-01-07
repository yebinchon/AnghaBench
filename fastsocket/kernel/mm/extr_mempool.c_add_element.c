
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ curr_nr; scalar_t__ min_nr; void** elements; } ;
typedef TYPE_1__ mempool_t ;


 int BUG_ON (int) ;

__attribute__((used)) static void add_element(mempool_t *pool, void *element)
{
 BUG_ON(pool->curr_nr >= pool->min_nr);
 pool->elements[pool->curr_nr++] = element;
}
