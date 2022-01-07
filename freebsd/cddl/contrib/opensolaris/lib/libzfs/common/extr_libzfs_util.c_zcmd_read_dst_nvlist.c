
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_nvlist_dst_size; scalar_t__ zc_nvlist_dst; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 int no_memory (int *) ;
 scalar_t__ nvlist_unpack (void*,int ,int **,int ) ;

int
zcmd_read_dst_nvlist(libzfs_handle_t *hdl, zfs_cmd_t *zc, nvlist_t **nvlp)
{
 if (nvlist_unpack((void *)(uintptr_t)zc->zc_nvlist_dst,
     zc->zc_nvlist_dst_size, nvlp, 0) != 0)
  return (no_memory(hdl));

 return (0);
}
