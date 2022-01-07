
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef int fibheap_t ;
struct TYPE_4__ {void* data; } ;


 int FIBHEAPKEY_MIN ;
 int fibheap_extract_min (int ) ;
 int fibheap_replace_key (int ,TYPE_1__*,int ) ;

void *
fibheap_delete_node (fibheap_t heap, fibnode_t node)
{
  void *ret = node->data;


  fibheap_replace_key (heap, node, FIBHEAPKEY_MIN);
  fibheap_extract_min (heap);

  return ret;
}
