
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_userquota_prop_t ;
struct TYPE_8__ {TYPE_1__* zfs_hdl; int zfs_name; } ;
typedef TYPE_2__ zfs_handle_t ;
struct TYPE_9__ {int zc_cookie; int zc_objset_type; int zc_guid; int zc_value; int zc_name; int member_0; } ;
typedef TYPE_3__ zfs_cmd_t ;
typedef int uint64_t ;
struct TYPE_7__ {int libzfs_fd; } ;


 int ZFS_IOC_USERSPACE_ONE ;
 int ZFS_PROP_ZONED ;
 int ioctl (int ,int ,TYPE_3__*) ;
 int strlcpy (int ,int ,int) ;
 int userquota_propname_decode (char const*,int ,int *,int ,int,int *) ;
 int zfs_prop_get_int (TYPE_2__*,int ) ;

__attribute__((used)) static int
zfs_prop_get_userquota_common(zfs_handle_t *zhp, const char *propname,
    uint64_t *propvalue, zfs_userquota_prop_t *typep)
{
 int err;
 zfs_cmd_t zc = { 0 };

 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

 err = userquota_propname_decode(propname,
     zfs_prop_get_int(zhp, ZFS_PROP_ZONED),
     typep, zc.zc_value, sizeof (zc.zc_value), &zc.zc_guid);
 zc.zc_objset_type = *typep;
 if (err)
  return (err);

 err = ioctl(zhp->zfs_hdl->libzfs_fd, ZFS_IOC_USERSPACE_ONE, &zc);
 if (err)
  return (err);

 *propvalue = zc.zc_cookie;
 return (0);
}
