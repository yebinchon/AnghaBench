
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;


 int zpool_get_config_physpath (int ,char*,size_t) ;

int
zpool_get_physpath(zpool_handle_t *zhp, char *physpath, size_t phypath_size)
{
 return (zpool_get_config_physpath(zhp->zpool_config, physpath,
     phypath_size));
}
