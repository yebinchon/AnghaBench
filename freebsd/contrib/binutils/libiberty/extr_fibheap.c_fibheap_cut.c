
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* fibnode_t ;
typedef int fibheap_t ;
struct TYPE_6__ {scalar_t__ mark; int * parent; int degree; } ;


 int fibheap_ins_root (int ,TYPE_1__*) ;
 int fibnode_remove (TYPE_1__*) ;

__attribute__((used)) static void
fibheap_cut (fibheap_t heap, fibnode_t node, fibnode_t parent)
{
  fibnode_remove (node);
  parent->degree--;
  fibheap_ins_root (heap, node);
  node->parent = ((void*)0);
  node->mark = 0;
}
