
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {scalar_t__ cb_type; int cb_scrub_cmd; } ;
typedef TYPE_1__ scrub_cbdata_t ;


 scalar_t__ POOL_SCAN_SCRUB ;
 scalar_t__ POOL_STATE_UNAVAIL ;
 int fprintf (int ,char*,char*) ;
 char* gettext (char*) ;
 int printf (char*,char*) ;
 int stderr ;
 char* zpool_get_name (int *) ;
 scalar_t__ zpool_get_state (int *) ;
 scalar_t__ zpool_has_checkpoint (int *) ;
 int zpool_scan (int *,scalar_t__,int ) ;

int
scrub_callback(zpool_handle_t *zhp, void *data)
{
 scrub_cbdata_t *cb = data;
 int err;




 if (zpool_get_state(zhp) == POOL_STATE_UNAVAIL) {
  (void) fprintf(stderr, gettext("cannot scrub '%s': pool is "
      "currently unavailable\n"), zpool_get_name(zhp));
  return (1);
 }

 err = zpool_scan(zhp, cb->cb_type, cb->cb_scrub_cmd);

 if (err == 0 && zpool_has_checkpoint(zhp) &&
     cb->cb_type == POOL_SCAN_SCRUB) {
  (void) printf(gettext("warning: will not scrub state that "
      "belongs to the checkpoint of pool '%s'\n"),
      zpool_get_name(zhp));
 }

 return (err != 0);
}
