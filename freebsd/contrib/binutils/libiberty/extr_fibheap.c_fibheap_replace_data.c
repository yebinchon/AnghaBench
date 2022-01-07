
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef int fibheap_t ;
struct TYPE_4__ {int key; } ;


 void* fibheap_replace_key_data (int ,TYPE_1__*,int ,void*) ;

void *
fibheap_replace_data (fibheap_t heap, fibnode_t node, void *data)
{
  return fibheap_replace_key_data (heap, node, node->key, data);
}
