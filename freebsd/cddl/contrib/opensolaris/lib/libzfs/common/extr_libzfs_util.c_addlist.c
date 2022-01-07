
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pl_prop; int pl_fixed; int pl_width; int * pl_user_prop; } ;
typedef TYPE_1__ zprop_list_t ;
typedef int zfs_type_t ;
typedef int libzfs_handle_t ;


 int EZFS_BADPROP ;
 int TEXT_DOMAIN ;
 int ZFS_TYPE_DATASET ;
 int ZFS_TYPE_POOL ;
 int ZPROP_INVAL ;
 int dgettext (int ,char*) ;
 int free (TYPE_1__*) ;
 int strlen (char*) ;
 TYPE_1__* zfs_alloc (int *,int) ;
 int zfs_error (int *,int ,int ) ;
 int zfs_error_aux (int *,int ,char*) ;
 int zfs_prop_user (char*) ;
 int zfs_prop_userquota (char*) ;
 int zfs_prop_written (char*) ;
 int * zfs_strdup (int *,char*) ;
 int zpool_prop_feature (char*) ;
 int zpool_prop_unsupported (char*) ;
 int zprop_name_to_prop (char*,int ) ;
 int zprop_valid_for_type (int,int ) ;
 int zprop_width (int,int *,int ) ;

__attribute__((used)) static int
addlist(libzfs_handle_t *hdl, char *propname, zprop_list_t **listp,
    zfs_type_t type)
{
 int prop;
 zprop_list_t *entry;

 prop = zprop_name_to_prop(propname, type);

 if (prop != ZPROP_INVAL && !zprop_valid_for_type(prop, type))
  prop = ZPROP_INVAL;






 if (prop == ZPROP_INVAL && ((type == ZFS_TYPE_POOL &&
     !zpool_prop_feature(propname) &&
     !zpool_prop_unsupported(propname)) ||
     (type == ZFS_TYPE_DATASET && !zfs_prop_user(propname) &&
     !zfs_prop_userquota(propname) && !zfs_prop_written(propname)))) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "invalid property '%s'"), propname);
  return (zfs_error(hdl, EZFS_BADPROP,
      dgettext(TEXT_DOMAIN, "bad property list")));
 }

 if ((entry = zfs_alloc(hdl, sizeof (zprop_list_t))) == ((void*)0))
  return (-1);

 entry->pl_prop = prop;
 if (prop == ZPROP_INVAL) {
  if ((entry->pl_user_prop = zfs_strdup(hdl, propname)) ==
      ((void*)0)) {
   free(entry);
   return (-1);
  }
  entry->pl_width = strlen(propname);
 } else {
  entry->pl_width = zprop_width(prop, &entry->pl_fixed,
      type);
 }

 *listp = entry;

 return (0);
}
