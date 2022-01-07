
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {int cb_unavail; scalar_t__ cb_first; } ;
typedef TYPE_1__ upgrade_cbdata_t ;


 scalar_t__ B_FALSE ;
 int B_TRUE ;
 scalar_t__ POOL_STATE_UNAVAIL ;
 int fprintf (int ,char*) ;
 char* gettext (char*) ;
 int printf (char*,char*) ;
 int stderr ;
 char* zpool_get_name (int *) ;
 scalar_t__ zpool_get_state (int *) ;

__attribute__((used)) static int
upgrade_list_unavail(zpool_handle_t *zhp, void *arg)
{
 upgrade_cbdata_t *cbp = arg;

 if (zpool_get_state(zhp) == POOL_STATE_UNAVAIL) {
  if (cbp->cb_first) {
   (void) fprintf(stderr, gettext("The following pools "
       "are unavailable and cannot be upgraded as this "
       "time.\n\n"));
   (void) fprintf(stderr, gettext("POOL\n"));
   (void) fprintf(stderr, gettext("------------\n"));
   cbp->cb_first = B_FALSE;
  }
  (void) printf(gettext("%s\n"), zpool_get_name(zhp));
  cbp->cb_unavail = B_TRUE;
 }
 return (0);
}
