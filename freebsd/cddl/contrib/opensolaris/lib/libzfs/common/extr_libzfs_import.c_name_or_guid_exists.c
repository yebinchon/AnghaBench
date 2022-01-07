
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ guid; int * poolname; } ;
typedef TYPE_2__ importargs_t ;


 int ZPOOL_CONFIG_POOL_GUID ;
 int ZPOOL_CONFIG_POOL_NAME ;
 scalar_t__ nvlist_lookup_string (int ,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int ,int ,scalar_t__*) ;
 scalar_t__ strcmp (char*,int *) ;
 int verify (int) ;
 int zpool_close (TYPE_1__*) ;

__attribute__((used)) static int
name_or_guid_exists(zpool_handle_t *zhp, void *data)
{
 importargs_t *import = data;
 int found = 0;

 if (import->poolname != ((void*)0)) {
  char *pool_name;

  verify(nvlist_lookup_string(zhp->zpool_config,
      ZPOOL_CONFIG_POOL_NAME, &pool_name) == 0);
  if (strcmp(pool_name, import->poolname) == 0)
   found = 1;
 } else {
  uint64_t pool_guid;

  verify(nvlist_lookup_uint64(zhp->zpool_config,
      ZPOOL_CONFIG_POOL_GUID, &pool_guid) == 0);
  if (pool_guid == import->guid)
   found = 1;
 }

 zpool_close(zhp);
 return (found);
}
