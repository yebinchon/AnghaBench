
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cl_pool; scalar_t__ cl_list; int cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
typedef TYPE_1__ prop_changelist_t ;


 int free (TYPE_1__*) ;
 int uu_list_destroy (scalar_t__) ;
 int uu_list_pool_destroy (scalar_t__) ;
 TYPE_1__* uu_list_teardown (scalar_t__,void**) ;
 int zfs_close (int ) ;

void
changelist_free(prop_changelist_t *clp)
{
 prop_changenode_t *cn;
 void *cookie;

 if (clp->cl_list) {
  cookie = ((void*)0);
  while ((cn = uu_list_teardown(clp->cl_list, &cookie)) != ((void*)0)) {
   zfs_close(cn->cn_handle);
   free(cn);
  }

  uu_list_destroy(clp->cl_list);
 }
 if (clp->cl_pool)
  uu_list_pool_destroy(clp->cl_pool);

 free(clp);
}
