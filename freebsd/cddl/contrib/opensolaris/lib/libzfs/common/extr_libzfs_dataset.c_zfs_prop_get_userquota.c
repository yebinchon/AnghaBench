
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zfs_userquota_prop_t ;
typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ ZFS_PROP_GROUPQUOTA ;
 scalar_t__ ZFS_PROP_USERQUOTA ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int strlcpy (char*,char*,int) ;
 int zfs_nicenum (scalar_t__,char*,int) ;
 int zfs_prop_get_userquota_common (int *,char const*,scalar_t__*,scalar_t__*) ;

int
zfs_prop_get_userquota(zfs_handle_t *zhp, const char *propname,
    char *propbuf, int proplen, boolean_t literal)
{
 int err;
 uint64_t propvalue;
 zfs_userquota_prop_t type;

 err = zfs_prop_get_userquota_common(zhp, propname, &propvalue,
     &type);

 if (err)
  return (err);

 if (literal) {
  (void) snprintf(propbuf, proplen, "%llu", propvalue);
 } else if (propvalue == 0 &&
     (type == ZFS_PROP_USERQUOTA || type == ZFS_PROP_GROUPQUOTA)) {
  (void) strlcpy(propbuf, "none", proplen);
 } else {
  zfs_nicenum(propvalue, propbuf, proplen);
 }
 return (0);
}
