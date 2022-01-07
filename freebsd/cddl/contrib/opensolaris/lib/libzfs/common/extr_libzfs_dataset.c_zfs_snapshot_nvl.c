
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int pool ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;

 int EZFS_EXISTS ;
 int EZFS_INVALIDNAME ;
 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_SNAPSHOT ;
 char* dgettext (int ,char*) ;
 int fnvpair_value_int32 (int *) ;
 int lzc_snapshot (int *,int *,int **) ;
 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char const* nvpair_name (int *) ;
 int snprintf (char*,int,char*,...) ;
 size_t strcspn (char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 int zfs_standard_error (int *,int,char*) ;
 int * zfs_valid_proplist (int *,int ,int *,int ,int *,int *,char*) ;
 int zfs_validate_name (int *,char const*,int ,int ) ;
 int zpool_close (int *) ;
 int * zpool_open (int *,char*) ;

int
zfs_snapshot_nvl(libzfs_handle_t *hdl, nvlist_t *snaps, nvlist_t *props)
{
 int ret;
 char errbuf[1024];
 nvpair_t *elem;
 nvlist_t *errors;

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot create snapshots "));

 elem = ((void*)0);
 while ((elem = nvlist_next_nvpair(snaps, elem)) != ((void*)0)) {
  const char *snapname = nvpair_name(elem);


  if (!zfs_validate_name(hdl, snapname, ZFS_TYPE_SNAPSHOT,
      B_TRUE)) {
   (void) snprintf(errbuf, sizeof (errbuf),
       dgettext(TEXT_DOMAIN,
       "cannot create snapshot '%s'"), snapname);
   return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));
  }
 }





 char pool[ZFS_MAX_DATASET_NAME_LEN];
 elem = nvlist_next_nvpair(snaps, ((void*)0));
 (void) strlcpy(pool, nvpair_name(elem), sizeof (pool));
 pool[strcspn(pool, "/@")] = '\0';
 zpool_handle_t *zpool_hdl = zpool_open(hdl, pool);

 if (props != ((void*)0) &&
     (props = zfs_valid_proplist(hdl, ZFS_TYPE_SNAPSHOT,
     props, B_FALSE, ((void*)0), zpool_hdl, errbuf)) == ((void*)0)) {
  zpool_close(zpool_hdl);
  return (-1);
 }
 zpool_close(zpool_hdl);

 ret = lzc_snapshot(snaps, props, &errors);

 if (ret != 0) {
  boolean_t printed = B_FALSE;
  for (elem = nvlist_next_nvpair(errors, ((void*)0));
      elem != ((void*)0);
      elem = nvlist_next_nvpair(errors, elem)) {
   (void) snprintf(errbuf, sizeof (errbuf),
       dgettext(TEXT_DOMAIN,
       "cannot create snapshot '%s'"), nvpair_name(elem));
   (void) zfs_standard_error(hdl,
       fnvpair_value_int32(elem), errbuf);
   printed = B_TRUE;
  }
  if (!printed) {
   switch (ret) {
   case 128:
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "multiple snapshots of same "
        "fs not allowed"));
    (void) zfs_error(hdl, EZFS_EXISTS, errbuf);

    break;
   default:
    (void) zfs_standard_error(hdl, ret, errbuf);
   }
  }
 }

 nvlist_free(props);
 nvlist_free(errors);
 return (ret);
}
