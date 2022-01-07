
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int uint64_t ;
typedef int pool_initialize_func_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef int int64_t ;
typedef int boolean_t ;


 int EZFS_ISL2CACHE ;
 int EZFS_ISSPARE ;
 int EZFS_NODEVICE ;
 int TEXT_DOMAIN ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_INITIALIZE_VDEVS ;
 char* dgettext (int ,char*) ;
 int fnvlist_add_string (int *,char*,char*) ;
 int fnvlist_add_uint64 (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int * fnvlist_lookup_nvlist (int *,int ) ;
 char* fnvlist_lookup_string (int *,char*) ;
 int fnvlist_lookup_uint64 (int *,int ) ;
 int fnvpair_value_int64 (int *) ;
 int lzc_initialize (int ,int ,int *,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int snprintf (char*,int,char*,...) ;
 int xlate_init_err (int ) ;
 int zfs_error (int *,int,char*) ;
 int zfs_error_fmt (int *,int ,char*,char*) ;
 int * zpool_find_vdev (TYPE_1__*,char*,int *,int *,int *) ;
 int zpool_standard_error (int *,int,char*) ;

int
zpool_initialize(zpool_handle_t *zhp, pool_initialize_func_t cmd_type,
    nvlist_t *vds)
{
 char msg[1024];
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 nvlist_t *errlist;


 nvlist_t *vdev_guids = fnvlist_alloc();
 nvlist_t *guids_to_paths = fnvlist_alloc();
 boolean_t spare, cache;
 nvlist_t *tgt;
 nvpair_t *elem;

 for (elem = nvlist_next_nvpair(vds, ((void*)0)); elem != ((void*)0);
     elem = nvlist_next_nvpair(vds, elem)) {
  char *vd_path = nvpair_name(elem);
  tgt = zpool_find_vdev(zhp, vd_path, &spare, &cache, ((void*)0));

  if ((tgt == ((void*)0)) || cache || spare) {
   (void) snprintf(msg, sizeof (msg),
       dgettext(TEXT_DOMAIN, "cannot initialize '%s'"),
       vd_path);
   int err = (tgt == ((void*)0)) ? EZFS_NODEVICE :
       (spare ? EZFS_ISSPARE : EZFS_ISL2CACHE);
   fnvlist_free(vdev_guids);
   fnvlist_free(guids_to_paths);
   return (zfs_error(hdl, err, msg));
  }

  uint64_t guid = fnvlist_lookup_uint64(tgt, ZPOOL_CONFIG_GUID);
  fnvlist_add_uint64(vdev_guids, vd_path, guid);

  (void) snprintf(msg, sizeof (msg), "%llu", guid);
  fnvlist_add_string(guids_to_paths, msg, vd_path);
 }

 int err = lzc_initialize(zhp->zpool_name, cmd_type, vdev_guids,
     &errlist);
 fnvlist_free(vdev_guids);

 if (err == 0) {
  fnvlist_free(guids_to_paths);
  return (0);
 }

 nvlist_t *vd_errlist = ((void*)0);
 if (errlist != ((void*)0)) {
  vd_errlist = fnvlist_lookup_nvlist(errlist,
      ZPOOL_INITIALIZE_VDEVS);
 }

 (void) snprintf(msg, sizeof (msg),
     dgettext(TEXT_DOMAIN, "operation failed"));

 for (elem = nvlist_next_nvpair(vd_errlist, ((void*)0)); elem != ((void*)0);
     elem = nvlist_next_nvpair(vd_errlist, elem)) {
  int64_t vd_error = xlate_init_err(fnvpair_value_int64(elem));
  char *path = fnvlist_lookup_string(guids_to_paths,
      nvpair_name(elem));
  (void) zfs_error_fmt(hdl, vd_error, "cannot initialize '%s'",
      path);
 }

 fnvlist_free(guids_to_paths);
 if (vd_errlist != ((void*)0))
  return (-1);

 return (zpool_standard_error(hdl, err, msg));
}
