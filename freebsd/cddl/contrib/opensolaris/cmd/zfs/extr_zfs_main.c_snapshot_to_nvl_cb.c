
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {int cb_nvl; int cb_first; int * cb_target; int cb_defer_destroy; int cb_doclones; } ;
typedef TYPE_1__ destroy_cbdata_t ;


 int B_TRUE ;
 int destroy_check_dependent ;
 int nomem () ;
 scalar_t__ nvlist_add_boolean (int ,int ) ;
 int zfs_close (int *) ;
 int zfs_get_name (int *) ;
 int zfs_iter_dependents (int *,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int
snapshot_to_nvl_cb(zfs_handle_t *zhp, void *arg)
{
 destroy_cbdata_t *cb = arg;
 int err = 0;


 if (!cb->cb_doclones && !cb->cb_defer_destroy) {
  cb->cb_target = zhp;
  cb->cb_first = B_TRUE;
  err = zfs_iter_dependents(zhp, B_TRUE,
      destroy_check_dependent, cb);
 }

 if (err == 0) {
  if (nvlist_add_boolean(cb->cb_nvl, zfs_get_name(zhp)))
   nomem();
 }
 zfs_close(zhp);
 return (err);
}
