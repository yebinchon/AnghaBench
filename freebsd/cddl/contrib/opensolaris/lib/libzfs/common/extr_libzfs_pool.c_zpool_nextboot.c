
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_0; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_9__ {int libzfs_fd; } ;
typedef TYPE_2__ libzfs_handle_t ;


 int ZFS_IOC_NEXTBOOT ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_POOL_GUID ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int fnvlist_add_uint64 (int *,int ,int ) ;
 int * fnvlist_alloc () ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int nvlist_free (int *) ;
 int zcmd_free_nvlists (TYPE_1__*) ;
 int zcmd_write_src_nvlist (TYPE_2__*,TYPE_1__*,int *) ;

int
zpool_nextboot(libzfs_handle_t *hdl, uint64_t pool_guid, uint64_t dev_guid,
    const char *command)
{
 zfs_cmd_t zc = { 0 };
 nvlist_t *args;
 char *packed;
 size_t size;
 int error;

 args = fnvlist_alloc();
 fnvlist_add_uint64(args, ZPOOL_CONFIG_POOL_GUID, pool_guid);
 fnvlist_add_uint64(args, ZPOOL_CONFIG_GUID, dev_guid);
 fnvlist_add_string(args, "command", command);
 error = zcmd_write_src_nvlist(hdl, &zc, args);
 if (error == 0)
  error = ioctl(hdl->libzfs_fd, ZFS_IOC_NEXTBOOT, &zc);
 zcmd_free_nvlists(&zc);
 nvlist_free(args);
 return (error);
}
