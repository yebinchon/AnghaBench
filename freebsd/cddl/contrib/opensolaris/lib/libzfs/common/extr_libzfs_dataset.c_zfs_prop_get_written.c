
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int uint64_t ;
typedef scalar_t__ boolean_t ;


 int snprintf (char*,int,char*,int ) ;
 int zfs_nicenum (int ,char*,int) ;
 int zfs_prop_get_written_int (int *,char const*,int *) ;

int
zfs_prop_get_written(zfs_handle_t *zhp, const char *propname,
    char *propbuf, int proplen, boolean_t literal)
{
 int err;
 uint64_t propvalue;

 err = zfs_prop_get_written_int(zhp, propname, &propvalue);

 if (err)
  return (err);

 if (literal) {
  (void) snprintf(propbuf, proplen, "%llu", propvalue);
 } else {
  zfs_nicenum(propvalue, propbuf, proplen);
 }
 return (0);
}
