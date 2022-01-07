
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef scalar_t__ fibheapkey_t ;
typedef TYPE_2__* fibheap_t ;
struct TYPE_9__ {int nodes; TYPE_1__* min; } ;
struct TYPE_8__ {scalar_t__ key; void* data; } ;


 int fibheap_ins_root (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* fibnode_new () ;

fibnode_t
fibheap_insert (fibheap_t heap, fibheapkey_t key, void *data)
{
  fibnode_t node;


  node = fibnode_new ();


  node->data = data;
  node->key = key;


  fibheap_ins_root (heap, node);



  if (heap->min == ((void*)0) || node->key < heap->min->key)
    heap->min = node;

  heap->nodes++;

  return node;
}
