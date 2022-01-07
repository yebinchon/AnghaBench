
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int EZFS_NOMEM ;
 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 int ZFS_IMPORT_NORMAL ;
 int ZPOOL_PROP_ALTROOT ;
 int ZPOOL_PROP_CACHEFILE ;
 int dgettext (int ,char*) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int zfs_error_fmt (int *,int ,int ,char const*) ;
 int zpool_import_props (int *,int *,char const*,int *,int ) ;
 int zpool_prop_to_name (int ) ;

int
zpool_import(libzfs_handle_t *hdl, nvlist_t *config, const char *newname,
    char *altroot)
{
 nvlist_t *props = ((void*)0);
 int ret;

 if (altroot != ((void*)0)) {
  if (nvlist_alloc(&props, NV_UNIQUE_NAME, 0) != 0) {
   return (zfs_error_fmt(hdl, EZFS_NOMEM,
       dgettext(TEXT_DOMAIN, "cannot import '%s'"),
       newname));
  }

  if (nvlist_add_string(props,
      zpool_prop_to_name(ZPOOL_PROP_ALTROOT), altroot) != 0 ||
      nvlist_add_string(props,
      zpool_prop_to_name(ZPOOL_PROP_CACHEFILE), "none") != 0) {
   nvlist_free(props);
   return (zfs_error_fmt(hdl, EZFS_NOMEM,
       dgettext(TEXT_DOMAIN, "cannot import '%s'"),
       newname));
  }
 }

 ret = zpool_import_props(hdl, config, newname, props,
     ZFS_IMPORT_NORMAL);
 nvlist_free(props);
 return (ret);
}
