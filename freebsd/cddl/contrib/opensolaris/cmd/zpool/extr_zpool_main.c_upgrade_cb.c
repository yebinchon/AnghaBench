
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {scalar_t__ cb_version; int cb_poolname; void* cb_first; void* cb_unavail; } ;
typedef TYPE_1__ upgrade_cbdata_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 scalar_t__ POOL_STATE_UNAVAIL ;
 scalar_t__ SPA_VERSION_FEATURES ;
 int SPA_VERSION_IS_SUPPORTED (scalar_t__) ;
 int ZPOOL_CONFIG_VERSION ;
 int assert (int ) ;
 int fprintf (int ,char*,char*) ;
 int g_zfs ;
 char* gettext (char*) ;
 int history_str ;
 void* log_history ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int printf (char*) ;
 int root_pool_upgrade_check (int *,int ,int) ;
 int stderr ;
 int upgrade_enable_all (int *,int*) ;
 int upgrade_version (int *,scalar_t__) ;
 int verify (int) ;
 int * zpool_get_config (int *,int *) ;
 char* zpool_get_name (int *) ;
 scalar_t__ zpool_get_state (int *) ;
 int zpool_log_history (int ,int ) ;

__attribute__((used)) static int
upgrade_cb(zpool_handle_t *zhp, void *arg)
{
 upgrade_cbdata_t *cbp = arg;
 nvlist_t *config;
 uint64_t version;
 boolean_t printnl = B_FALSE;
 int ret;

 if (zpool_get_state(zhp) == POOL_STATE_UNAVAIL) {
  (void) fprintf(stderr, gettext("cannot upgrade '%s': pool is "
      "currently unavailable.\n\n"), zpool_get_name(zhp));
  cbp->cb_unavail = B_TRUE;

  return (0);
 }

 config = zpool_get_config(zhp, ((void*)0));
 verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_VERSION,
     &version) == 0);

 assert(SPA_VERSION_IS_SUPPORTED(version));

 if (version < cbp->cb_version) {
  cbp->cb_first = B_FALSE;
  ret = upgrade_version(zhp, cbp->cb_version);
  if (ret != 0)
   return (ret);




  printnl = B_TRUE;
 }

 if (cbp->cb_version >= SPA_VERSION_FEATURES) {
  int count;
  ret = upgrade_enable_all(zhp, &count);
  if (ret != 0)
   return (ret);

  if (count > 0) {
   cbp->cb_first = B_FALSE;
   printnl = B_TRUE;
   (void) zpool_log_history(g_zfs, history_str);
   log_history = B_FALSE;
  }
 }

 if (printnl) {
  (void) printf(gettext("\n"));
 }

 return (0);
}
