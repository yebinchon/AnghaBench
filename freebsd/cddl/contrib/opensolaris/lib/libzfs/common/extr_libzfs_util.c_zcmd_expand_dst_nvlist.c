
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zc_nvlist_dst; int zc_nvlist_dst_size; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;
typedef int libzfs_handle_t ;


 int free (void*) ;
 scalar_t__ zfs_alloc (int *,int ) ;

int
zcmd_expand_dst_nvlist(libzfs_handle_t *hdl, zfs_cmd_t *zc)
{
 free((void *)(uintptr_t)zc->zc_nvlist_dst);
 zc->zc_nvlist_dst =
     (uint64_t)(uintptr_t)zfs_alloc(hdl, zc->zc_nvlist_dst_size);
 if (zc->zc_nvlist_dst == 0)
  return (-1);

 return (0);
}
