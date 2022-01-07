
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int ZPOOL_CONFIG_POOL_GUID ;
 scalar_t__ nvlist_lookup_uint64 (int ,int ,scalar_t__*) ;
 int verify (int) ;
 int zpool_close (TYPE_1__*) ;
 scalar_t__ zpool_open_silent (int *,char const*,TYPE_1__**) ;

__attribute__((used)) static int
pool_active(libzfs_handle_t *hdl, const char *name, uint64_t guid,
    boolean_t *isactive)
{
 zpool_handle_t *zhp;
 uint64_t theguid;

 if (zpool_open_silent(hdl, name, &zhp) != 0)
  return (-1);

 if (zhp == ((void*)0)) {
  *isactive = B_FALSE;
  return (0);
 }

 verify(nvlist_lookup_uint64(zhp->zpool_config, ZPOOL_CONFIG_POOL_GUID,
     &theguid) == 0);

 zpool_close(zhp);

 *isactive = (theguid == guid);
 return (0);
}
