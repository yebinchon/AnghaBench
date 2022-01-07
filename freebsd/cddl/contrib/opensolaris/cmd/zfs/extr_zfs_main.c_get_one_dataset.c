
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_type_t ;
typedef int zfs_handle_t ;
typedef scalar_t__ time_t ;
struct TYPE_3__ {TYPE_2__* ga_cbp; scalar_t__ ga_verbose; } ;
typedef TYPE_1__ get_all_state_t ;
struct TYPE_4__ {scalar_t__ cb_used; scalar_t__ cb_alloc; } ;


 int CHECK_SPINNER ;
 scalar_t__ SPINNER_TIME ;
 int ZFS_TYPE_FILESYSTEM ;
 int assert (int) ;
 int libzfs_add_handle (TYPE_2__*,int *) ;
 scalar_t__ time (int *) ;
 int update_progress (char*) ;
 int zfs_close (int *) ;
 int zfs_get_type (int *) ;
 scalar_t__ zfs_iter_filesystems (int *,int (*) (int *,void*),void*) ;

__attribute__((used)) static int
get_one_dataset(zfs_handle_t *zhp, void *data)
{
 static char *spin[] = { "-", "\\", "|", "/" };
 static int spinval = 0;
 static int spincheck = 0;
 static time_t last_spin_time = (time_t)0;
 get_all_state_t *state = data;
 zfs_type_t type = zfs_get_type(zhp);

 if (state->ga_verbose) {
  if (--spincheck < 0) {
   time_t now = time(((void*)0));
   if (last_spin_time + SPINNER_TIME < now) {
    update_progress(spin[spinval++ % 4]);
    last_spin_time = now;
   }
   spincheck = CHECK_SPINNER;
  }
 }




 if (zfs_iter_filesystems(zhp, get_one_dataset, data) != 0) {
  zfs_close(zhp);
  return (1);
 }




 if ((type & ZFS_TYPE_FILESYSTEM) == 0) {
  zfs_close(zhp);
  return (0);
 }
 libzfs_add_handle(state->ga_cbp, zhp);
 assert(state->ga_cbp->cb_used <= state->ga_cbp->cb_alloc);

 return (0);
}
