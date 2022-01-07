
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EZFS_VDEVNOTSUP ;
 int TEXT_DOMAIN ;
 int VDEV_TYPE_FILE ;
 int VDEV_TYPE_HOLE ;
 int VDEV_TYPE_MISSING ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_TYPE ;
 int dgettext (int ,char*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ strcmp (char*,int ) ;
 int verify (int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,int ,char*) ;

__attribute__((used)) static boolean_t
supported_dump_vdev_type(libzfs_handle_t *hdl, nvlist_t *config, char *errbuf)
{
 char *type;
 nvlist_t **child;
 uint_t children, c;

 verify(nvlist_lookup_string(config, ZPOOL_CONFIG_TYPE, &type) == 0);
 if (strcmp(type, VDEV_TYPE_FILE) == 0 ||
     strcmp(type, VDEV_TYPE_HOLE) == 0 ||
     strcmp(type, VDEV_TYPE_MISSING) == 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "vdev type '%s' is not supported"), type);
  (void) zfs_error(hdl, EZFS_VDEVNOTSUP, errbuf);
  return (B_FALSE);
 }
 if (nvlist_lookup_nvlist_array(config, ZPOOL_CONFIG_CHILDREN,
     &child, &children) == 0) {
  for (c = 0; c < children; c++) {
   if (!supported_dump_vdev_type(hdl, child[c], errbuf))
    return (B_FALSE);
  }
 }
 return (B_TRUE);
}
