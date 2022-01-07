
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int * cb_prevsnap; int * cb_firstsnap; int cb_snapused; } ;
typedef TYPE_1__ destroy_cbdata_t ;


 int assert (int ) ;
 int destroy_print_cb ;
 int free (int *) ;
 int lzc_snaprange_space (int *,int *,scalar_t__*) ;
 int zfs_iter_snapshots_sorted (int *,int ,TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
destroy_print_snapshots(zfs_handle_t *fs_zhp, destroy_cbdata_t *cb)
{
 int err = 0;
 assert(cb->cb_firstsnap == ((void*)0));
 assert(cb->cb_prevsnap == ((void*)0));
 err = zfs_iter_snapshots_sorted(fs_zhp, destroy_print_cb, cb, 0, 0);
 if (cb->cb_firstsnap != ((void*)0)) {
  uint64_t used = 0;
  if (err == 0) {
   err = lzc_snaprange_space(cb->cb_firstsnap,
       cb->cb_prevsnap, &used);
  }
  cb->cb_snapused += used;
  free(cb->cb_firstsnap);
  cb->cb_firstsnap = ((void*)0);
  free(cb->cb_prevsnap);
  cb->cb_prevsnap = ((void*)0);
 }
 return (err);
}
