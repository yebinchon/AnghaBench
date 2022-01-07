
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * libzfs_ns_avlpool; int * libzfs_ns_avl; } ;
typedef TYPE_1__ libzfs_handle_t ;
struct TYPE_7__ {struct TYPE_7__* cn_name; int cn_config; } ;
typedef TYPE_2__ config_node_t ;


 int free (TYPE_2__*) ;
 int nvlist_free (int ) ;
 int uu_avl_destroy (int *) ;
 int uu_avl_pool_destroy (int *) ;
 TYPE_2__* uu_avl_teardown (int *,void**) ;

void
namespace_clear(libzfs_handle_t *hdl)
{
 if (hdl->libzfs_ns_avl) {
  config_node_t *cn;
  void *cookie = ((void*)0);

  while ((cn = uu_avl_teardown(hdl->libzfs_ns_avl,
      &cookie)) != ((void*)0)) {
   nvlist_free(cn->cn_config);
   free(cn->cn_name);
   free(cn);
  }

  uu_avl_destroy(hdl->libzfs_ns_avl);
  hdl->libzfs_ns_avl = ((void*)0);
 }

 if (hdl->libzfs_ns_avlpool) {
  uu_avl_pool_destroy(hdl->libzfs_ns_avlpool);
  hdl->libzfs_ns_avlpool = ((void*)0);
 }
}
