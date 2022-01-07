
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ua_tree; int ua_index; int * ua_pool; scalar_t__ ua_debug; } ;
typedef TYPE_1__ uu_avl_t ;
typedef int uu_avl_pool_t ;
typedef scalar_t__ uu_avl_index_t ;


 scalar_t__ INDEX_CHECK (scalar_t__) ;
 int INDEX_DECODE (scalar_t__) ;
 int INDEX_NEXT (int ) ;
 int INDEX_VALID (TYPE_1__*,scalar_t__) ;
 uintptr_t* NODE_ARRAY (int *,void*) ;
 uintptr_t POOL_TO_MARKER (int *) ;
 int avl_insert (int *,void*,int ) ;
 int uu_panic (char*,void*,void*,void*,...) ;

void
uu_avl_insert(uu_avl_t *ap, void *elem, uu_avl_index_t idx)
{
 if (ap->ua_debug) {
  uu_avl_pool_t *pp = ap->ua_pool;
  uintptr_t *na = NODE_ARRAY(pp, elem);

  if (na[1] != 0)
   uu_panic("uu_avl_insert(%p, %p, %p): node already "
       "in tree, or corrupt\n",
       (void *)ap, elem, (void *)idx);
  if (na[0] == 0)
   uu_panic("uu_avl_insert(%p, %p, %p): node not "
       "initialized\n",
       (void *)ap, elem, (void *)idx);
  if (na[0] != POOL_TO_MARKER(pp))
   uu_panic("uu_avl_insert(%p, %p, %p): node from "
       "other pool, or corrupt\n",
       (void *)ap, elem, (void *)idx);

  if (!INDEX_VALID(ap, idx))
   uu_panic("uu_avl_insert(%p, %p, %p): %s\n",
       (void *)ap, elem, (void *)idx,
       INDEX_CHECK(idx)? "outdated index" :
       "invalid index");




  ap->ua_index = INDEX_NEXT(ap->ua_index);
 }
 avl_insert(&ap->ua_tree, elem, INDEX_DECODE(idx));
}
