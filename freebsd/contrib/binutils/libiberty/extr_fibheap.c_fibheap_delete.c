
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* fibheap_t ;
struct TYPE_6__ {int * min; } ;


 TYPE_1__* fibheap_extr_min_node (TYPE_1__*) ;
 int free (TYPE_1__*) ;

void
fibheap_delete (fibheap_t heap)
{
  while (heap->min != ((void*)0))
    free (fibheap_extr_min_node (heap));

  free (heap);
}
