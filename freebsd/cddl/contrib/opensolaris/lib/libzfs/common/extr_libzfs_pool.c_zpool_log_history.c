
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int member_0; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
struct TYPE_9__ {int libzfs_fd; } ;
typedef TYPE_2__ libzfs_handle_t ;


 int ZFS_IOC_LOG_HISTORY ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int ioctl (int ,int ,TYPE_1__*) ;
 int nvlist_free (int *) ;
 int zcmd_free_nvlists (TYPE_1__*) ;
 int zcmd_write_src_nvlist (TYPE_2__*,TYPE_1__*,int *) ;

int
zpool_log_history(libzfs_handle_t *hdl, const char *message)
{
 zfs_cmd_t zc = { 0 };
 nvlist_t *args;
 int err;

 args = fnvlist_alloc();
 fnvlist_add_string(args, "message", message);
 err = zcmd_write_src_nvlist(hdl, &zc, args);
 if (err == 0)
  err = ioctl(hdl->libzfs_fd, ZFS_IOC_LOG_HISTORY, &zc);
 nvlist_free(args);
 zcmd_free_nvlists(&zc);
 return (err);
}
