
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {int * cb_zhp; int cb_guid; } ;
typedef TYPE_1__ spare_cbdata_t ;
typedef int nvlist_t ;


 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ find_vdev (int *,int ) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int verify (int) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;

__attribute__((used)) static int
find_spare(zpool_handle_t *zhp, void *data)
{
 spare_cbdata_t *cbp = data;
 nvlist_t *config, *nvroot;

 config = zpool_get_config(zhp, ((void*)0));
 verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) == 0);

 if (find_vdev(nvroot, cbp->cb_guid)) {
  cbp->cb_zhp = zhp;
  return (1);
 }

 zpool_close(zhp);
 return (0);
}
