
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef TYPE_2__* fibheap_t ;
struct TYPE_11__ {scalar_t__ nodes; TYPE_1__* min; } ;
struct TYPE_10__ {struct TYPE_10__* right; int * parent; struct TYPE_10__* child; } ;


 int fibheap_consolidate (TYPE_2__*) ;
 int fibheap_ins_root (TYPE_2__*,TYPE_1__*) ;
 int fibheap_rem_root (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static fibnode_t
fibheap_extr_min_node (fibheap_t heap)
{
  fibnode_t ret = heap->min;
  fibnode_t x, y, orig;



  for (x = ret->child, orig = ((void*)0); x != orig && x != ((void*)0); x = y)
    {
      if (orig == ((void*)0))
 orig = x;
      y = x->right;
      x->parent = ((void*)0);
      fibheap_ins_root (heap, x);
    }


  fibheap_rem_root (heap, ret);
  heap->nodes--;


  if (heap->nodes == 0)
    heap->min = ((void*)0);
  else
    {


      heap->min = ret->right;
      fibheap_consolidate (heap);
    }

  return ret;
}
