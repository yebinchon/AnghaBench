
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef TYPE_2__* fibheap_t ;
struct TYPE_8__ {int * min; } ;
struct TYPE_7__ {void* data; } ;


 TYPE_1__* fibheap_extr_min_node (TYPE_2__*) ;
 int free (TYPE_1__*) ;

void *
fibheap_extract_min (fibheap_t heap)
{
  fibnode_t z;
  void *ret = ((void*)0);


  if (heap->min != ((void*)0))
    {


      z = fibheap_extr_min_node (heap);
      ret = z->data;
      free (z);
    }

  return ret;
}
