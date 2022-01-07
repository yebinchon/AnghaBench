
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* basic_block ;
struct TYPE_9__ {int * node; int * heap; } ;
struct TYPE_7__ {TYPE_1__* rtl; } ;
struct TYPE_8__ {size_t index; TYPE_2__ il; } ;
struct TYPE_6__ {int visited; } ;


 TYPE_5__* bbd ;
 int fibheap_delete_node (int *,int *) ;

__attribute__((used)) static void
mark_bb_visited (basic_block bb, int trace)
{
  bb->il.rtl->visited = trace;
  if (bbd[bb->index].heap)
    {
      fibheap_delete_node (bbd[bb->index].heap, bbd[bb->index].node);
      bbd[bb->index].heap = ((void*)0);
      bbd[bb->index].node = ((void*)0);
    }
}
