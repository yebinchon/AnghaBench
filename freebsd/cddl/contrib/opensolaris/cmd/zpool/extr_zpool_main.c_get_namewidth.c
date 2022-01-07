
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int nvlist_t ;
struct TYPE_2__ {int cb_namewidth; int cb_verbose; } ;
typedef TYPE_1__ iostat_cbdata_t ;


 int ZPOOL_CONFIG_VDEV_TREE ;
 int max_width (int *,int *,int ,int) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int strlen (int ) ;
 int verify (int) ;
 int * zpool_get_config (int *,int *) ;
 int zpool_get_name (int *) ;

int
get_namewidth(zpool_handle_t *zhp, void *data)
{
 iostat_cbdata_t *cb = data;
 nvlist_t *config, *nvroot;

 if ((config = zpool_get_config(zhp, ((void*)0))) != ((void*)0)) {
  verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
      &nvroot) == 0);
  if (!cb->cb_verbose)
   cb->cb_namewidth = strlen(zpool_get_name(zhp));
  else
   cb->cb_namewidth = max_width(zhp, nvroot, 0,
       cb->cb_namewidth);
 }





 if (cb->cb_namewidth < 10)
  cb->cb_namewidth = 10;
 if (cb->cb_namewidth > 38)
  cb->cb_namewidth = 38;

 return (0);
}
