
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef scalar_t__ uint64_t ;
typedef size_t spa_feature_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {char* fi_guid; } ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int ENOTSUP ;
 char* ZFS_FEATURE_ACTIVE ;
 char* ZFS_FEATURE_DISABLED ;
 char* ZFS_FEATURE_ENABLED ;
 int ZFS_UNSUPPORTED_INACTIVE ;
 int ZFS_UNSUPPORTED_READONLY ;
 scalar_t__ nvlist_lookup_uint64 (int *,char const*,scalar_t__*) ;
 TYPE_1__* spa_feature_table ;
 char* strchr (char const*,char) ;
 int strcpy (char*,int ) ;
 int strlcpy (char*,char*,size_t) ;
 int zfeature_lookup_name (char const*,size_t*) ;
 int * zpool_get_features (int *) ;
 scalar_t__ zpool_prop_feature (char const*) ;
 scalar_t__ zpool_prop_unsupported (char const*) ;

int
zpool_prop_get_feature(zpool_handle_t *zhp, const char *propname, char *buf,
    size_t len)
{
 uint64_t refcount;
 boolean_t found = B_FALSE;
 nvlist_t *features = zpool_get_features(zhp);
 boolean_t supported;
 const char *feature = strchr(propname, '@') + 1;

 supported = zpool_prop_feature(propname);
 ASSERT(supported || zpool_prop_unsupported(propname));






 if (supported) {
  int ret;
  spa_feature_t fid;

  ret = zfeature_lookup_name(feature, &fid);
  if (ret != 0) {
   (void) strlcpy(buf, "-", len);
   return (ENOTSUP);
  }
  feature = spa_feature_table[fid].fi_guid;
 }

 if (nvlist_lookup_uint64(features, feature, &refcount) == 0)
  found = B_TRUE;

 if (supported) {
  if (!found) {
   (void) strlcpy(buf, ZFS_FEATURE_DISABLED, len);
  } else {
   if (refcount == 0)
    (void) strlcpy(buf, ZFS_FEATURE_ENABLED, len);
   else
    (void) strlcpy(buf, ZFS_FEATURE_ACTIVE, len);
  }
 } else {
  if (found) {
   if (refcount == 0) {
    (void) strcpy(buf, ZFS_UNSUPPORTED_INACTIVE);
   } else {
    (void) strcpy(buf, ZFS_UNSUPPORTED_READONLY);
   }
  } else {
   (void) strlcpy(buf, "-", len);
   return (ENOTSUP);
  }
 }

 return (0);
}
