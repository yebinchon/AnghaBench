
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 int ZPOOL_CONFIG_FEATURE_STATS ;
 int nvlist_exists (int *,int ) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int * zpool_get_config (int *,int *) ;
 int zpool_refresh_stats (int *,scalar_t__*) ;

nvlist_t *
zpool_get_features(zpool_handle_t *zhp)
{
 nvlist_t *config, *features;

 config = zpool_get_config(zhp, ((void*)0));

 if (config == ((void*)0) || !nvlist_exists(config,
     ZPOOL_CONFIG_FEATURE_STATS)) {
  int error;
  boolean_t missing = B_FALSE;

  error = zpool_refresh_stats(zhp, &missing);

  if (error != 0 || missing)
   return (((void*)0));

  config = zpool_get_config(zhp, ((void*)0));
 }

 if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_FEATURE_STATS,
     &features) != 0)
  return (((void*)0));

 return (features);
}
