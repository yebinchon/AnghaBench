
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int nvlist_t ;
struct TYPE_4__ {int cb_iteration; scalar_t__ cb_verbose; } ;
typedef TYPE_1__ iostat_cbdata_t ;


 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int print_iostat_separator (TYPE_1__*) ;
 int print_vdev_stats (int *,int ,int *,int *,TYPE_1__*,int ) ;
 int verify (int) ;
 int * zpool_get_config (int *,int **) ;
 int zpool_get_name (int *) ;

int
print_iostat(zpool_handle_t *zhp, void *data)
{
 iostat_cbdata_t *cb = data;
 nvlist_t *oldconfig, *newconfig;
 nvlist_t *oldnvroot, *newnvroot;

 newconfig = zpool_get_config(zhp, &oldconfig);

 if (cb->cb_iteration == 1)
  oldconfig = ((void*)0);

 verify(nvlist_lookup_nvlist(newconfig, ZPOOL_CONFIG_VDEV_TREE,
     &newnvroot) == 0);

 if (oldconfig == ((void*)0))
  oldnvroot = ((void*)0);
 else
  verify(nvlist_lookup_nvlist(oldconfig, ZPOOL_CONFIG_VDEV_TREE,
      &oldnvroot) == 0);




 print_vdev_stats(zhp, zpool_get_name(zhp), oldnvroot, newnvroot, cb, 0);

 if (cb->cb_verbose)
  print_iostat_separator(cb);

 return (0);
}
