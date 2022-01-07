
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int nvlist_t ;
struct TYPE_4__ {int cb_verbose; } ;
typedef TYPE_1__ list_cbdata_t ;


 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int print_list_stats (int *,int *,int *,TYPE_1__*,int ) ;
 int print_pool (int *,TYPE_1__*) ;
 int verify (int) ;
 int * zpool_get_config (int *,int *) ;

int
list_callback(zpool_handle_t *zhp, void *data)
{
 list_cbdata_t *cbp = data;
 nvlist_t *config;
 nvlist_t *nvroot;

 config = zpool_get_config(zhp, ((void*)0));

 print_pool(zhp, cbp);
 if (!cbp->cb_verbose)
  return (0);

 verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) == 0);
 print_list_stats(zhp, ((void*)0), nvroot, cbp, 0);

 return (0);
}
