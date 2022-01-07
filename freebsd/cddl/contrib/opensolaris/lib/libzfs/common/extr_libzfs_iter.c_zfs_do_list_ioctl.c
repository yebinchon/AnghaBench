
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* zfs_hdl; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {int zc_cookie; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint64_t ;
struct TYPE_12__ {int libzfs_fd; } ;





 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int errno ;
 int ioctl (int ,unsigned long,TYPE_2__*) ;
 int strlcpy (int ,int ,int) ;
 int zcmd_expand_dst_nvlist (TYPE_3__*,TYPE_2__*) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 int zfs_standard_error (TYPE_3__*,int,int ) ;

__attribute__((used)) static int
zfs_do_list_ioctl(zfs_handle_t *zhp, unsigned long arg, zfs_cmd_t *zc)
{
 int rc;
 uint64_t orig_cookie;

 orig_cookie = zc->zc_cookie;
top:
 (void) strlcpy(zc->zc_name, zhp->zfs_name, sizeof (zc->zc_name));
 rc = ioctl(zhp->zfs_hdl->libzfs_fd, arg, zc);

 if (rc == -1) {
  switch (errno) {
  case 129:

   if (zcmd_expand_dst_nvlist(zhp->zfs_hdl, zc) != 0) {
    zcmd_free_nvlists(zc);
    return (-1);
   }
   zc->zc_cookie = orig_cookie;
   goto top;





  case 128:
  case 130:
   rc = 1;
   break;
  default:
   rc = zfs_standard_error(zhp->zfs_hdl, errno,
       dgettext(TEXT_DOMAIN,
       "cannot iterate filesystems"));
   break;
  }
 }
 return (rc);
}
