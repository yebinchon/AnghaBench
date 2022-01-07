
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ua_tree; scalar_t__ ua_debug; } ;
typedef TYPE_1__ uu_avl_t ;
typedef scalar_t__ uu_avl_index_t ;


 int AVL_AFTER ;
 scalar_t__ INDEX_CHECK (scalar_t__) ;
 int INDEX_DECODE (scalar_t__) ;
 int INDEX_VALID (TYPE_1__*,scalar_t__) ;
 void* avl_nearest (int *,int ,int ) ;
 int uu_panic (char*,void*,void*,char*) ;

void *
uu_avl_nearest_next(uu_avl_t *ap, uu_avl_index_t idx)
{
 if (ap->ua_debug && !INDEX_VALID(ap, idx))
  uu_panic("uu_avl_nearest_next(%p, %p): %s\n",
      (void *)ap, (void *)idx, INDEX_CHECK(idx)?
      "outdated index" : "invalid index");
 return (avl_nearest(&ap->ua_tree, INDEX_DECODE(idx), AVL_AFTER));
}
