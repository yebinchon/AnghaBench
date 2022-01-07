
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef int fibheapkey_t ;
typedef int fibheap_t ;
struct TYPE_4__ {int key; int data; } ;


 int fibheap_replace_key_data (int ,TYPE_1__*,int,int ) ;

fibheapkey_t
fibheap_replace_key (fibheap_t heap, fibnode_t node, fibheapkey_t key)
{
  int okey = node->key;
  fibheap_replace_key_data (heap, node, key, node->data);
  return okey;
}
