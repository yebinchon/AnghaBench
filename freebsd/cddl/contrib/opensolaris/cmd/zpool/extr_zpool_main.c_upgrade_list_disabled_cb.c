
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_3__ {void* cb_first; void* cb_unavail; } ;
typedef TYPE_1__ upgrade_cbdata_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef void* boolean_t ;
struct TYPE_4__ {char* fi_guid; char* fi_uname; } ;


 void* B_FALSE ;
 void* B_TRUE ;
 scalar_t__ POOL_STATE_UNAVAIL ;
 int SPA_FEATURES ;
 scalar_t__ SPA_VERSION_FEATURES ;
 int ZPOOL_CONFIG_VERSION ;
 char* gettext (char*) ;
 int nvlist_exists (int *,char const*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int printf (char*,...) ;
 TYPE_2__* spa_feature_table ;
 int verify (int) ;
 int * zpool_get_config (int *,int *) ;
 int * zpool_get_features (int *) ;
 char* zpool_get_name (int *) ;
 scalar_t__ zpool_get_state (int *) ;

__attribute__((used)) static int
upgrade_list_disabled_cb(zpool_handle_t *zhp, void *arg)
{
 upgrade_cbdata_t *cbp = arg;
 nvlist_t *config;
 uint64_t version;

 if (zpool_get_state(zhp) == POOL_STATE_UNAVAIL) {




  cbp->cb_unavail = B_TRUE;
  return (0);
 }

 config = zpool_get_config(zhp, ((void*)0));
 verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_VERSION,
     &version) == 0);

 if (version >= SPA_VERSION_FEATURES) {
  int i;
  boolean_t poolfirst = B_TRUE;
  nvlist_t *enabled = zpool_get_features(zhp);

  for (i = 0; i < SPA_FEATURES; i++) {
   const char *fguid = spa_feature_table[i].fi_guid;
   const char *fname = spa_feature_table[i].fi_uname;
   if (!nvlist_exists(enabled, fguid)) {
    if (cbp->cb_first) {
     (void) printf(gettext("\nSome "
         "supported features are not "
         "enabled on the following pools. "
         "Once a\nfeature is enabled the "
         "pool may become incompatible with "
         "software\nthat does not support "
         "the feature. See "
         "zpool-features(7) for "
         "details.\n\n"));
     (void) printf(gettext("POOL  "
         "FEATURE\n"));
     (void) printf(gettext("------"
         "---------\n"));
     cbp->cb_first = B_FALSE;
    }

    if (poolfirst) {
     (void) printf(gettext("%s\n"),
         zpool_get_name(zhp));
     poolfirst = B_FALSE;
    }

    (void) printf(gettext("      %s\n"), fname);
   }
  }
 }

 return (0);
}
