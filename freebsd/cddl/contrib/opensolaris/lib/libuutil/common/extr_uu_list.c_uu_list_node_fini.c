
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ulp_name; scalar_t__ ulp_debug; } ;
typedef TYPE_1__ uu_list_pool_t ;
typedef int uu_list_node_t ;
struct TYPE_6__ {int * uln_prev; int * uln_next; } ;
typedef TYPE_2__ uu_list_node_impl_t ;


 int * POOL_TO_MARKER (TYPE_1__*) ;
 int uu_panic (char*,void*,void*,void*,int ) ;

void
uu_list_node_fini(void *base, uu_list_node_t *np_arg, uu_list_pool_t *pp)
{
 uu_list_node_impl_t *np = (uu_list_node_impl_t *)np_arg;

 if (pp->ulp_debug) {
  if (np->uln_next == ((void*)0) &&
      np->uln_prev == ((void*)0)) {
   uu_panic("uu_list_node_fini(%p, %p, %p (\"%s\")): "
       "node already finied\n",
       base, (void *)np_arg, (void *)pp, pp->ulp_name);
  }
  if (np->uln_next != POOL_TO_MARKER(pp) ||
      np->uln_prev != ((void*)0)) {
   uu_panic("uu_list_node_fini(%p, %p, %p (\"%s\")): "
       "node corrupt or on list\n",
       base, (void *)np_arg, (void *)pp, pp->ulp_name);
  }
 }
 np->uln_next = ((void*)0);
 np->uln_prev = ((void*)0);
}
