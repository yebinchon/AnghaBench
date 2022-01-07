
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ua_pool; int ua_tree; } ;
typedef TYPE_1__ uu_avl_t ;
typedef int uu_avl_pool_t ;


 uintptr_t* NODE_ARRAY (int *,void*) ;
 uintptr_t POOL_TO_MARKER (int *) ;
 void* avl_destroy_nodes (int *,void**) ;

void *
uu_avl_teardown(uu_avl_t *ap, void **cookie)
{
 void *elem = avl_destroy_nodes(&ap->ua_tree, cookie);

 if (elem != ((void*)0)) {
  uu_avl_pool_t *pp = ap->ua_pool;
  uintptr_t *na = NODE_ARRAY(pp, elem);

  na[0] = POOL_TO_MARKER(pp);
  na[1] = 0;
 }
 return (elem);
}
