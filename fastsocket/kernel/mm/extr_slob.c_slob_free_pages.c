
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* reclaim_state; } ;
struct TYPE_3__ {int reclaimed_slab; } ;


 TYPE_2__* current ;
 int free_pages (unsigned long,int) ;

__attribute__((used)) static void slob_free_pages(void *b, int order)
{
 if (current->reclaim_state)
  current->reclaim_state->reclaimed_slab += 1 << order;
 free_pages((unsigned long)b, order);
}
