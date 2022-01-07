
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ga_cbp; scalar_t__ ga_verbose; } ;
typedef TYPE_1__ get_all_state_t ;
typedef int get_all_cb_t ;
typedef scalar_t__ boolean_t ;


 int finish_progress (int ) ;
 int g_zfs ;
 int get_one_dataset ;
 int gettext (char*) ;
 int set_progress_header (int ) ;
 int zfs_iter_root (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
get_all_datasets(get_all_cb_t *cbp, boolean_t verbose)
{
 get_all_state_t state = {
  .ga_verbose = verbose,
  .ga_cbp = cbp
 };

 if (verbose)
  set_progress_header(gettext("Reading ZFS config"));
 (void) zfs_iter_root(g_zfs, get_one_dataset, &state);

 if (verbose)
  finish_progress(gettext("done."));
}
