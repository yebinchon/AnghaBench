
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int fibheapkey_t ;
typedef TYPE_2__* fibheap_t ;
struct TYPE_5__ {TYPE_1__* min; } ;
struct TYPE_4__ {int key; } ;



fibheapkey_t
fibheap_min_key (fibheap_t heap)
{

  if (heap->min == ((void*)0))
    return 0;
  return heap->min->key;
}
