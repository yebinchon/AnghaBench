
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char const* zfs_name; TYPE_1__* zfs_hdl; } ;
typedef TYPE_2__ zfs_handle_t ;
struct TYPE_8__ {char const* zc_name; char const* zc_value; int zc_cookie; int member_0; } ;
typedef TYPE_3__ zfs_cmd_t ;
typedef int uint64_t ;
struct TYPE_6__ {int libzfs_fd; } ;


 int ZFS_IOC_SPACE_WRITTEN ;
 int ioctl (int ,int ,TYPE_3__*) ;
 void* strchr (char const*,char) ;
 int strlcat (char const*,char const*,int) ;
 int strlcpy (char const*,char const*,int) ;

int
zfs_prop_get_written_int(zfs_handle_t *zhp, const char *propname,
    uint64_t *propvalue)
{
 int err;
 zfs_cmd_t zc = { 0 };
 const char *snapname;

 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

 snapname = strchr(propname, '@') + 1;
 if (strchr(snapname, '@')) {
  (void) strlcpy(zc.zc_value, snapname, sizeof (zc.zc_value));
 } else {

  char *cp;

  (void) strlcpy(zc.zc_value, zhp->zfs_name,
      sizeof (zc.zc_value));
  cp = strchr(zc.zc_value, '@');
  if (cp != ((void*)0))
   *cp = '\0';
  (void) strlcat(zc.zc_value, "@", sizeof (zc.zc_value));
  (void) strlcat(zc.zc_value, snapname, sizeof (zc.zc_value));
 }

 err = ioctl(zhp->zfs_hdl->libzfs_fd, ZFS_IOC_SPACE_WRITTEN, &zc);
 if (err)
  return (err);

 *propvalue = zc.zc_cookie;
 return (0);
}
