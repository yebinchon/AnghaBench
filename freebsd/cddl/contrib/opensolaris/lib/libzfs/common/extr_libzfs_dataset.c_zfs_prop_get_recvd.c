
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
struct TYPE_7__ {int * zfs_recvd_props; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 scalar_t__ ZPROP_INVAL ;
 int ZPROP_VALUE ;
 scalar_t__ get_recvd_props_ioctl (TYPE_1__*) ;
 int nvlist_exists (int *,char const*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char const*,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int strlcpy (char*,char*,size_t) ;
 int verify (int) ;
 scalar_t__ zfs_name_to_prop (char const*) ;
 int zfs_prop_get (TYPE_1__*,scalar_t__,char*,size_t,int *,int *,int ,int ) ;
 int zfs_set_recvd_props_mode (TYPE_1__*,int *) ;
 int zfs_unset_recvd_props_mode (TYPE_1__*,int *) ;

int
zfs_prop_get_recvd(zfs_handle_t *zhp, const char *propname, char *propbuf,
    size_t proplen, boolean_t literal)
{
 zfs_prop_t prop;
 int err = 0;

 if (zhp->zfs_recvd_props == ((void*)0))
  if (get_recvd_props_ioctl(zhp) != 0)
   return (-1);

 prop = zfs_name_to_prop(propname);

 if (prop != ZPROP_INVAL) {
  uint64_t cookie;
  if (!nvlist_exists(zhp->zfs_recvd_props, propname))
   return (-1);
  zfs_set_recvd_props_mode(zhp, &cookie);
  err = zfs_prop_get(zhp, prop, propbuf, proplen,
      ((void*)0), ((void*)0), 0, literal);
  zfs_unset_recvd_props_mode(zhp, &cookie);
 } else {
  nvlist_t *propval;
  char *recvdval;
  if (nvlist_lookup_nvlist(zhp->zfs_recvd_props,
      propname, &propval) != 0)
   return (-1);
  verify(nvlist_lookup_string(propval, ZPROP_VALUE,
      &recvdval) == 0);
  (void) strlcpy(propbuf, recvdval, proplen);
 }

 return (err == 0 ? 0 : -1);
}
