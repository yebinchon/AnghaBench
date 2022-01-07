
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int longlong_t ;
typedef int buf ;


 int snprintf (char*,int,char*,int ) ;
 int zfs_prop_set (int *,int ,char*) ;
 int zfs_prop_to_name (int ) ;

int
zfs_prop_set_int(zfs_handle_t *zhp, zfs_prop_t prop, uint64_t val)
{
 char buf[64];

 (void) snprintf(buf, sizeof (buf), "%llu", (longlong_t)val);
 return (zfs_prop_set(zhp, zfs_prop_to_name(prop), buf));
}
