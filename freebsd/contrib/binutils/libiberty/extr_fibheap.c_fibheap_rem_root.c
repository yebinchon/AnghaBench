
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef TYPE_2__* fibheap_t ;
struct TYPE_7__ {int * root; } ;
struct TYPE_6__ {struct TYPE_6__* left; } ;


 int * fibnode_remove (TYPE_1__*) ;

__attribute__((used)) static void
fibheap_rem_root (fibheap_t heap, fibnode_t node)
{
  if (node->left == node)
    heap->root = ((void*)0);
  else
    heap->root = fibnode_remove (node);
}
