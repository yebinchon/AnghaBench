
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zprop_type_t ;
typedef scalar_t__ zfs_type_t ;
typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int data_type_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int DATA_TYPE_STRING ;
 int DATA_TYPE_UINT64 ;
 int EZFS_BADPROP ;



 int TEXT_DOMAIN ;
 int UINT64_MAX ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_FILESYSTEM_LIMIT ;
 int ZFS_PROP_QUOTA ;
 int ZFS_PROP_REFQUOTA ;

 int ZFS_PROP_SNAPSHOT_LIMIT ;
 scalar_t__ ZFS_TYPE_DATASET ;
 scalar_t__ ZFS_TYPE_POOL ;
 scalar_t__ ZFS_TYPE_VOLUME ;
 int abort () ;
 int dgettext (int ,char*) ;
 int no_memory (int *) ;
 scalar_t__ nvlist_add_string (int *,char const*,char*) ;
 scalar_t__ nvlist_add_uint64 (int *,char const*,int ) ;
 int nvpair_name (int *) ;
 int nvpair_type (int *) ;
 int nvpair_value_string (int *,char**) ;
 int nvpair_value_uint64 (int *,int *) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int zfs_error (int *,int ,char const*) ;
 int zfs_error_aux (int *,int ,...) ;
 int zfs_nicestrtonum (int *,char*,int *) ;
 int zfs_prop_get_type (int) ;
 char* zfs_prop_to_name (int) ;
 int zpool_prop_get_type (int) ;
 char* zpool_prop_to_name (int) ;
 int zprop_string_to_index (int,char*,int *,scalar_t__) ;
 int zprop_values (int,scalar_t__) ;

int
zprop_parse_value(libzfs_handle_t *hdl, nvpair_t *elem, int prop,
    zfs_type_t type, nvlist_t *ret, char **svalp, uint64_t *ivalp,
    const char *errbuf)
{
 data_type_t datatype = nvpair_type(elem);
 zprop_type_t proptype;
 const char *propname;
 char *value;
 boolean_t isnone = B_FALSE;
 boolean_t isauto = B_FALSE;

 if (type == ZFS_TYPE_POOL) {
  proptype = zpool_prop_get_type(prop);
  propname = zpool_prop_to_name(prop);
 } else {
  proptype = zfs_prop_get_type(prop);
  propname = zfs_prop_to_name(prop);
 }




 *svalp = ((void*)0);
 *ivalp = 0;

 switch (proptype) {
 case 129:
  if (datatype != DATA_TYPE_STRING) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "'%s' must be a string"), nvpair_name(elem));
   goto error;
  }
  (void) nvpair_value_string(elem, svalp);
  if (strlen(*svalp) >= ZFS_MAXPROPLEN) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "'%s' is too long"), nvpair_name(elem));
   goto error;
  }
  break;

 case 130:
  if (datatype == DATA_TYPE_STRING) {
   (void) nvpair_value_string(elem, &value);
   if (strcmp(value, "none") == 0) {
    isnone = B_TRUE;
   } else if (strcmp(value, "auto") == 0) {
    isauto = B_TRUE;
   } else if (zfs_nicestrtonum(hdl, value, ivalp) != 0) {
    goto error;
   }
  } else if (datatype == DATA_TYPE_UINT64) {
   (void) nvpair_value_uint64(elem, ivalp);
  } else {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "'%s' must be a number"), nvpair_name(elem));
   goto error;
  }




  if ((type & ZFS_TYPE_DATASET) && *ivalp == 0 && !isnone &&
      (prop == ZFS_PROP_QUOTA || prop == ZFS_PROP_REFQUOTA)) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "use 'none' to disable quota/refquota"));
   goto error;
  }





  if ((type & ZFS_TYPE_DATASET) && isnone &&
      (prop == ZFS_PROP_FILESYSTEM_LIMIT ||
      prop == ZFS_PROP_SNAPSHOT_LIMIT)) {
   *ivalp = UINT64_MAX;
  }






  if (isauto) {
   switch (prop) {
   case 128:
    if ((type & ZFS_TYPE_VOLUME) == 0) {
     zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
         "'%s=auto' only allowed on "
         "volumes"), nvpair_name(elem));
     goto error;
    }
    *ivalp = UINT64_MAX;
    break;
   default:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "'auto' is invalid value for '%s'"),
        nvpair_name(elem));
    goto error;
   }
  }

  break;

 case 131:
  if (datatype != DATA_TYPE_STRING) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "'%s' must be a string"), nvpair_name(elem));
   goto error;
  }

  (void) nvpair_value_string(elem, &value);

  if (zprop_string_to_index(prop, value, ivalp, type) != 0) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "'%s' must be one of '%s'"), propname,
       zprop_values(prop, type));
   goto error;
  }
  break;

 default:
  abort();
 }




 if (*svalp != ((void*)0)) {
  if (nvlist_add_string(ret, propname, *svalp) != 0) {
   (void) no_memory(hdl);
   return (-1);
  }
 } else {
  if (nvlist_add_uint64(ret, propname, *ivalp) != 0) {
   (void) no_memory(hdl);
   return (-1);
  }
 }

 return (0);
error:
 (void) zfs_error(hdl, EZFS_BADPROP, errbuf);
 return (-1);
}
