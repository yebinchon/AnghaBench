
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_iter_f ;
typedef int zfs_handle_t ;
typedef int tpool_t ;
struct TYPE_3__ {size_t mnt_num_handles; int mnt_idx; void* mnt_data; int mnt_func; int ** mnt_zhps; int * mnt_tp; int * mnt_hdl; } ;
typedef TYPE_1__ mnt_param_t ;
typedef int libzfs_handle_t ;


 int tpool_dispatch (int *,int ,void*) ;
 TYPE_1__* zfs_alloc (int *,int) ;
 int zfs_mount_task ;

__attribute__((used)) static void
zfs_dispatch_mount(libzfs_handle_t *hdl, zfs_handle_t **handles,
    size_t num_handles, int idx, zfs_iter_f func, void *data, tpool_t *tp)
{
 mnt_param_t *mnt_param = zfs_alloc(hdl, sizeof (mnt_param_t));

 mnt_param->mnt_hdl = hdl;
 mnt_param->mnt_tp = tp;
 mnt_param->mnt_zhps = handles;
 mnt_param->mnt_num_handles = num_handles;
 mnt_param->mnt_idx = idx;
 mnt_param->mnt_func = func;
 mnt_param->mnt_data = data;

 (void) tpool_dispatch(tp, zfs_mount_task, (void*)mnt_param);
}
