
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef scalar_t__ zfs_type_t ;
typedef int uint64_t ;
typedef int pool_path ;
typedef int parent ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef enum lzc_dataset_type { ____Placeholder_lzc_dataset_type } lzc_dataset_type ;


 int B_FALSE ;
 int B_TRUE ;





 int EZFS_BADPROP ;
 int EZFS_BADTYPE ;
 int EZFS_BADVERSION ;
 int EZFS_EXISTS ;
 int EZFS_INVALIDNAME ;
 int EZFS_NOENT ;
 int EZFS_VOLTOOBIG ;
 int LZC_DATSET_TYPE_ZFS ;
 int LZC_DATSET_TYPE_ZVOL ;
 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_VOLBLOCKSIZE ;
 int ZFS_PROP_VOLSIZE ;
 int ZFS_TYPE_DATASET ;
 scalar_t__ ZFS_TYPE_VOLUME ;
 scalar_t__ check_parents (int *,char const*,int*,int ,int *) ;
 scalar_t__ dataset_nestcheck (char const*) ;
 char* dgettext (int ,char*) ;
 int errno ;
 int lzc_create (char const*,int,int *) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_uint64 (int *,int ,int*) ;
 int parent_name (char const*,char*,int) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ zfs_dataset_exists (int *,char const*,int ) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zfs_prop_default_numeric (int ) ;
 int zfs_prop_to_name (int ) ;
 int zfs_standard_error (int *,int,char*) ;
 int * zfs_valid_proplist (int *,scalar_t__,int *,int,int *,int *,char*) ;
 int zfs_validate_name (int *,char const*,scalar_t__,int ) ;
 int zpool_close (int *) ;
 int * zpool_open (int *,char*) ;

int
zfs_create(libzfs_handle_t *hdl, const char *path, zfs_type_t type,
    nvlist_t *props)
{
 int ret;
 uint64_t size = 0;
 uint64_t blocksize = zfs_prop_default_numeric(ZFS_PROP_VOLBLOCKSIZE);
 char errbuf[1024];
 uint64_t zoned;
 enum lzc_dataset_type ost;
 zpool_handle_t *zpool_handle;

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot create '%s'"), path);


 if (!zfs_validate_name(hdl, path, type, B_TRUE))
  return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));

 if (dataset_nestcheck(path) != 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "maximum name nesting depth exceeded"));
  return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));
 }


 if (check_parents(hdl, path, &zoned, B_FALSE, ((void*)0)) != 0)
  return (-1);
 if (zfs_dataset_exists(hdl, path, ZFS_TYPE_DATASET)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "dataset already exists"));
  return (zfs_error(hdl, EZFS_EXISTS, errbuf));
 }

 if (type == ZFS_TYPE_VOLUME)
  ost = LZC_DATSET_TYPE_ZVOL;
 else
  ost = LZC_DATSET_TYPE_ZFS;


 char pool_path[ZFS_MAX_DATASET_NAME_LEN];
 (void) strlcpy(pool_path, path, sizeof (pool_path));


 char *p = strchr(pool_path, '/');
 if (p != ((void*)0))
  *p = '\0';

 if ((zpool_handle = zpool_open(hdl, pool_path)) == ((void*)0))
  return (-1);

 if (props && (props = zfs_valid_proplist(hdl, type, props,
     zoned, ((void*)0), zpool_handle, errbuf)) == 0) {
  zpool_close(zpool_handle);
  return (-1);
 }
 zpool_close(zpool_handle);

 if (type == ZFS_TYPE_VOLUME) {







  if (props == ((void*)0) || nvlist_lookup_uint64(props,
      zfs_prop_to_name(ZFS_PROP_VOLSIZE), &size) != 0) {
   nvlist_free(props);
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "missing volume size"));
   return (zfs_error(hdl, EZFS_BADPROP, errbuf));
  }

  if ((ret = nvlist_lookup_uint64(props,
      zfs_prop_to_name(ZFS_PROP_VOLBLOCKSIZE),
      &blocksize)) != 0) {
   if (ret == 131) {
    blocksize = zfs_prop_default_numeric(
        ZFS_PROP_VOLBLOCKSIZE);
   } else {
    nvlist_free(props);
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "missing volume block size"));
    return (zfs_error(hdl, EZFS_BADPROP, errbuf));
   }
  }

  if (size == 0) {
   nvlist_free(props);
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "volume size cannot be zero"));
   return (zfs_error(hdl, EZFS_BADPROP, errbuf));
  }

  if (size % blocksize != 0) {
   nvlist_free(props);
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "volume size must be a multiple of volume block "
       "size"));
   return (zfs_error(hdl, EZFS_BADPROP, errbuf));
  }
 }


 ret = lzc_create(path, ost, props);
 nvlist_free(props);


 if (ret != 0) {
  char parent[ZFS_MAX_DATASET_NAME_LEN];
  (void) parent_name(path, parent, sizeof (parent));

  switch (errno) {
  case 131:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "no such parent '%s'"), parent);
   return (zfs_error(hdl, EZFS_NOENT, errbuf));

  case 132:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "parent '%s' is not a filesystem"), parent);
   return (zfs_error(hdl, EZFS_BADTYPE, errbuf));

  case 130:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "pool must be upgraded to set this "
       "property or value"));
   return (zfs_error(hdl, EZFS_BADVERSION, errbuf));
  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "invalid property value(s) specified"));
   return (zfs_error(hdl, EZFS_BADPROP, errbuf));
  default:
   return (zfs_standard_error(hdl, errno, errbuf));
  }
 }

 return (0);
}
