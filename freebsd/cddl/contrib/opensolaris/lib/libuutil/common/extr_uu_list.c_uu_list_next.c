
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* uln_next; } ;
struct TYPE_8__ {TYPE_2__ ul_null_node; } ;
typedef TYPE_1__ uu_list_t ;
typedef TYPE_2__ uu_list_node_impl_t ;


 TYPE_2__* ELEM_TO_NODE (TYPE_1__*,void*) ;
 void* NODE_TO_ELEM (TYPE_1__*,TYPE_2__*) ;

void *
uu_list_next(uu_list_t *lp, void *elem)
{
 uu_list_node_impl_t *n = ELEM_TO_NODE(lp, elem);

 n = n->uln_next;
 if (n == &lp->ul_null_node)
  return (((void*)0));
 return (NODE_TO_ELEM(lp, n));
}
