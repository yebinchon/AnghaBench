
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * uln_prev; } ;
struct TYPE_8__ {TYPE_2__ ul_null_node; scalar_t__ ul_debug; } ;
typedef TYPE_1__ uu_list_t ;
typedef TYPE_2__ uu_list_node_impl_t ;
typedef scalar_t__ uu_list_index_t ;


 scalar_t__ INDEX_CHECK (scalar_t__) ;
 TYPE_2__* INDEX_TO_NODE (scalar_t__) ;
 int INDEX_VALID (TYPE_1__*,scalar_t__) ;
 void* NODE_TO_ELEM (TYPE_1__*,TYPE_2__*) ;
 int uu_panic (char*,void*,void*,...) ;

void *
uu_list_nearest_next(uu_list_t *lp, uu_list_index_t idx)
{
 uu_list_node_impl_t *np = INDEX_TO_NODE(idx);

 if (np == ((void*)0))
  np = &lp->ul_null_node;

 if (lp->ul_debug) {
  if (!INDEX_VALID(lp, idx))
   uu_panic("uu_list_nearest_next(%p, %p): %s\n",
       (void *)lp, (void *)idx,
       INDEX_CHECK(idx)? "outdated index" :
       "invalid index");
  if (np->uln_prev == ((void*)0))
   uu_panic("uu_list_nearest_next(%p, %p): out-of-date "
       "index\n", (void *)lp, (void *)idx);
 }

 if (np == &lp->ul_null_node)
  return (((void*)0));
 else
  return (NODE_TO_ELEM(lp, np));
}
