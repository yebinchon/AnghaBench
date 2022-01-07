
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int nvlist_t ;
typedef int libzfs_handle_t ;
struct TYPE_5__ {scalar_t__ guid; int * poolname; int * cachefile; int exists; scalar_t__ unique; } ;
typedef TYPE_1__ importargs_t ;


 int name_or_guid_exists ;
 int verify (int) ;
 int * zpool_find_import_cached (int *,int *,int *,scalar_t__) ;
 int * zpool_find_import_impl (int *,TYPE_1__*) ;
 int zpool_iter (int *,int ,TYPE_1__*) ;

nvlist_t *
zpool_search_import(libzfs_handle_t *hdl, importargs_t *import)
{
 verify(import->poolname == ((void*)0) || import->guid == 0);

 if (import->unique)
  import->exists = zpool_iter(hdl, name_or_guid_exists, import);

 if (import->cachefile != ((void*)0))
  return (zpool_find_import_cached(hdl, import->cachefile,
      import->poolname, import->guid));

 return (zpool_find_import_impl(hdl, import));
}
