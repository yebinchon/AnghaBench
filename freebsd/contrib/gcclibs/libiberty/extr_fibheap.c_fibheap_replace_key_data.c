
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef scalar_t__ fibheapkey_t ;
typedef TYPE_2__* fibheap_t ;
struct TYPE_16__ {TYPE_1__* min; } ;
struct TYPE_15__ {scalar_t__ key; struct TYPE_15__* parent; void* data; } ;


 int fibheap_cascading_cut (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ fibheap_comp_data (TYPE_2__*,scalar_t__,void*,TYPE_1__*) ;
 scalar_t__ fibheap_compare (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int fibheap_cut (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;

void *
fibheap_replace_key_data (fibheap_t heap, fibnode_t node,
                          fibheapkey_t key, void *data)
{
  void *odata;
  fibheapkey_t okey;
  fibnode_t y;




  if (fibheap_comp_data (heap, key, data, node) > 0)
    return ((void*)0);

  odata = node->data;
  okey = node->key;
  node->data = data;
  node->key = key;
  y = node->parent;

  if (okey == key)
    return odata;




  if (y != ((void*)0) && fibheap_compare (heap, node, y) <= 0)
    {
      fibheap_cut (heap, node, y);
      fibheap_cascading_cut (heap, y);
    }

  if (fibheap_compare (heap, node, heap->min) <= 0)
    heap->min = node;

  return odata;
}
