
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef TYPE_2__* fibheap_t ;
struct TYPE_9__ {int min; scalar_t__ nodes; TYPE_1__* root; } ;
struct TYPE_8__ {struct TYPE_8__* left; struct TYPE_8__* right; } ;


 scalar_t__ fibheap_compare (TYPE_2__*,int ,int ) ;
 int free (TYPE_2__*) ;

fibheap_t
fibheap_union (fibheap_t heapa, fibheap_t heapb)
{
  fibnode_t a_root, b_root, temp;


  if ((a_root = heapa->root) == ((void*)0))
    {
      free (heapa);
      return heapb;
    }
  if ((b_root = heapb->root) == ((void*)0))
    {
      free (heapb);
      return heapa;
    }


  a_root->left->right = b_root;
  b_root->left->right = a_root;
  temp = a_root->left;
  a_root->left = b_root->left;
  b_root->left = temp;
  heapa->nodes += heapb->nodes;


  if (fibheap_compare (heapa, heapb->min, heapa->min) < 0)
    heapa->min = heapb->min;

  free (heapb);
  return heapa;
}
