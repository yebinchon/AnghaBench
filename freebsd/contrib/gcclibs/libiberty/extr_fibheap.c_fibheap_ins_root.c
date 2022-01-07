
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef TYPE_2__* fibheap_t ;
struct TYPE_8__ {TYPE_1__* root; } ;
struct TYPE_7__ {struct TYPE_7__* right; struct TYPE_7__* left; } ;


 int fibnode_insert_after (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void
fibheap_ins_root (fibheap_t heap, fibnode_t node)
{


  if (heap->root == ((void*)0))
    {
      heap->root = node;
      node->left = node;
      node->right = node;
      return;
    }



  fibnode_insert_after (heap->root, node);
}
