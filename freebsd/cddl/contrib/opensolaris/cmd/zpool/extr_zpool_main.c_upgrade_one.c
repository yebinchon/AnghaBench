
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {scalar_t__ cb_version; int cb_poolname; void* cb_unavail; } ;
typedef TYPE_1__ upgrade_cbdata_t ;
typedef scalar_t__ uint64_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 scalar_t__ POOL_STATE_UNAVAIL ;
 scalar_t__ SPA_VERSION ;
 scalar_t__ SPA_VERSION_FEATURES ;
 int ZPOOL_PROP_VERSION ;
 int fprintf (int ,char*,char*) ;
 char* gettext (char*) ;
 int printf (char*,...) ;
 int root_pool_upgrade_check (int *,int ,int) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int upgrade_enable_all (int *,int*) ;
 int upgrade_version (int *,scalar_t__) ;
 char* zpool_get_name (int *) ;
 scalar_t__ zpool_get_prop_int (int *,int ,int *) ;
 scalar_t__ zpool_get_state (int *) ;

__attribute__((used)) static int
upgrade_one(zpool_handle_t *zhp, void *data)
{
 boolean_t printnl = B_FALSE;
 upgrade_cbdata_t *cbp = data;
 uint64_t cur_version;
 int ret;

 if (zpool_get_state(zhp) == POOL_STATE_UNAVAIL) {
  (void) fprintf(stderr, gettext("cannot upgrade '%s': pool is "
      "is currently unavailable.\n\n"), zpool_get_name(zhp));
  cbp->cb_unavail = B_TRUE;
  return (1);
 }

 if (strcmp("log", zpool_get_name(zhp)) == 0) {
  (void) printf(gettext("'log' is now a reserved word\n"
      "Pool 'log' must be renamed using export and import"
      " to upgrade.\n\n"));
  return (1);
 }

 cur_version = zpool_get_prop_int(zhp, ZPOOL_PROP_VERSION, ((void*)0));
 if (cur_version > cbp->cb_version) {
  (void) printf(gettext("Pool '%s' is already formatted "
      "using more current version '%llu'.\n\n"),
      zpool_get_name(zhp), cur_version);
  return (0);
 }

 if (cbp->cb_version != SPA_VERSION && cur_version == cbp->cb_version) {
  (void) printf(gettext("Pool '%s' is already formatted "
      "using version %llu.\n\n"), zpool_get_name(zhp),
      cbp->cb_version);
  return (0);
 }

 if (cur_version != cbp->cb_version) {
  printnl = B_TRUE;
  ret = upgrade_version(zhp, cbp->cb_version);
  if (ret != 0)
   return (ret);




 }

 if (cbp->cb_version >= SPA_VERSION_FEATURES) {
  int count = 0;
  ret = upgrade_enable_all(zhp, &count);
  if (ret != 0)
   return (ret);

  if (count != 0) {
   printnl = B_TRUE;




  } else if (cur_version == SPA_VERSION) {
   (void) printf(gettext("Pool '%s' already has all "
       "supported features enabled.\n\n"),
       zpool_get_name(zhp));
  }
 }

 if (printnl) {
  (void) printf(gettext("\n"));
 }

 return (0);
}
