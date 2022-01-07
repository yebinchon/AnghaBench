
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_8__ {void* cb_error; scalar_t__ cb_force; } ;
typedef TYPE_2__ rollback_data_t ;
typedef int prop_changelist_t ;


 int B_FALSE ;
 void* B_TRUE ;
 int MS_FORCE ;
 int ZFS_PROP_NAME ;
 int changelist_free (int *) ;
 int * changelist_gather (TYPE_1__*,int ,int ,int ) ;
 int changelist_postfix (int *) ;
 scalar_t__ changelist_prefix (int *) ;
 int changelist_remove (int *,int ) ;
 int zfs_close (TYPE_1__*) ;
 scalar_t__ zfs_destroy (TYPE_1__*,int ) ;

__attribute__((used)) static int
rollback_destroy_dependent(zfs_handle_t *zhp, void *data)
{
 rollback_data_t *cbp = data;
 prop_changelist_t *clp;


 clp = changelist_gather(zhp, ZFS_PROP_NAME, 0,
     cbp->cb_force ? MS_FORCE: 0);
 if (clp == ((void*)0) || changelist_prefix(clp) != 0) {
  cbp->cb_error = B_TRUE;
  zfs_close(zhp);
  return (0);
 }
 if (zfs_destroy(zhp, B_FALSE) != 0)
  cbp->cb_error = B_TRUE;
 else
  changelist_remove(clp, zhp->zfs_name);
 (void) changelist_postfix(clp);
 changelist_free(clp);

 zfs_close(zhp);
 return (0);
}
