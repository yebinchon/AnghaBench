
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * zn_handle; } ;
typedef TYPE_1__ zpool_node_t ;
struct TYPE_9__ {int zl_avl; } ;
typedef TYPE_2__ zpool_list_t ;
typedef int zpool_handle_t ;


 int free (TYPE_1__*) ;
 TYPE_1__* uu_avl_find (int ,TYPE_1__*,int *,int *) ;
 int uu_avl_remove (int ,TYPE_1__*) ;
 int zpool_close (int *) ;

void
pool_list_remove(zpool_list_t *zlp, zpool_handle_t *zhp)
{
 zpool_node_t search, *node;

 search.zn_handle = zhp;
 if ((node = uu_avl_find(zlp->zl_avl, &search, ((void*)0), ((void*)0))) != ((void*)0)) {
  uu_avl_remove(zlp->zl_avl, node);
  zpool_close(node->zn_handle);
  free(node);
 }
}
