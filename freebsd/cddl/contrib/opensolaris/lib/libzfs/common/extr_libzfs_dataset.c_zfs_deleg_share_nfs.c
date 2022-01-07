
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zfs_share_op_t ;
struct TYPE_6__ {int z_sharemax; int z_sharetype; void* z_exportdata; void* z_sharedata; } ;
struct TYPE_7__ {TYPE_1__ zc_share; int zc_string; int zc_value; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef void* uint64_t ;
struct TYPE_8__ {int libzfs_fd; } ;
typedef TYPE_3__ libzfs_handle_t ;


 int ZFS_IOC_SHARE ;
 int ioctl (int ,int ,TYPE_2__*) ;
 int strlcpy (int ,char*,int) ;

int
zfs_deleg_share_nfs(libzfs_handle_t *hdl, char *dataset, char *path,
    char *resource, void *export, void *sharetab,
    int sharemax, zfs_share_op_t operation)
{
 zfs_cmd_t zc = { 0 };
 int error;

 (void) strlcpy(zc.zc_name, dataset, sizeof (zc.zc_name));
 (void) strlcpy(zc.zc_value, path, sizeof (zc.zc_value));
 if (resource)
  (void) strlcpy(zc.zc_string, resource, sizeof (zc.zc_string));
 zc.zc_share.z_sharedata = (uint64_t)(uintptr_t)sharetab;
 zc.zc_share.z_exportdata = (uint64_t)(uintptr_t)export;
 zc.zc_share.z_sharetype = operation;
 zc.zc_share.z_sharemax = sharemax;
 error = ioctl(hdl->libzfs_fd, ZFS_IOC_SHARE, &zc);
 return (error);
}
