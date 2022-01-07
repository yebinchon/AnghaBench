
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zn_avlnode; int * zn_handle; } ;
typedef TYPE_1__ zpool_node_t ;
struct TYPE_9__ {int zl_avl; scalar_t__ zl_proplist; int zl_pool; } ;
typedef TYPE_2__ zpool_list_t ;
typedef int zpool_handle_t ;
typedef int uu_avl_index_t ;


 int free (TYPE_1__*) ;
 TYPE_1__* safe_malloc (int) ;
 int * uu_avl_find (int ,TYPE_1__*,int *,int *) ;
 int uu_avl_insert (int ,TYPE_1__*,int ) ;
 int uu_avl_node_init (TYPE_1__*,int *,int ) ;
 int zpool_close (int *) ;
 scalar_t__ zpool_expand_proplist (int *,scalar_t__) ;

__attribute__((used)) static int
add_pool(zpool_handle_t *zhp, void *data)
{
 zpool_list_t *zlp = data;
 zpool_node_t *node = safe_malloc(sizeof (zpool_node_t));
 uu_avl_index_t idx;

 node->zn_handle = zhp;
 uu_avl_node_init(node, &node->zn_avlnode, zlp->zl_pool);
 if (uu_avl_find(zlp->zl_avl, node, ((void*)0), &idx) == ((void*)0)) {
  if (zlp->zl_proplist &&
      zpool_expand_proplist(zhp, zlp->zl_proplist) != 0) {
   zpool_close(zhp);
   free(node);
   return (-1);
  }
  uu_avl_insert(zlp->zl_avl, node, idx);
 } else {
  zpool_close(zhp);
  free(node);
  return (-1);
 }

 return (0);
}
