
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int zfs_handle_t ;
typedef int origin ;
typedef int libzfs_handle_t ;
struct TYPE_6__ {char* ds; void* tosnap; void* fromsnap; int isclone; int errbuf; TYPE_1__* zhp; } ;
typedef TYPE_2__ differ_info_t ;
struct TYPE_5__ {int * zfs_hdl; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int EZFS_INVALIDNAME ;
 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_ORIGIN ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 char* dgettext (int ,char*) ;
 int make_temp_snapshot (TYPE_2__*) ;
 int snprintf (int ,int,char*,...) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int strncpy (char*,char const*,int) ;
 void* zfs_alloc (int *,int) ;
 void* zfs_asprintf (int *,char*,char*,char*) ;
 int zfs_close (int *) ;
 int zfs_error (int *,int ,int ) ;
 int * zfs_open (int *,char*,int ) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;
 void* zfs_strdup (int *,char const*) ;
 int zfs_validate_name (int *,char const*,int ,int ) ;

__attribute__((used)) static int
get_snapshot_names(differ_info_t *di, const char *fromsnap,
    const char *tosnap)
{
 libzfs_handle_t *hdl = di->zhp->zfs_hdl;
 char *atptrf = ((void*)0);
 char *atptrt = ((void*)0);
 int fdslen, fsnlen;
 int tdslen, tsnlen;
 if (tosnap == ((void*)0)) {

  (void) snprintf(di->errbuf, sizeof (di->errbuf),
      dgettext(TEXT_DOMAIN,
      "Badly formed snapshot name %s"), fromsnap);

  if (!zfs_validate_name(hdl, fromsnap, ZFS_TYPE_SNAPSHOT,
      B_FALSE)) {
   return (zfs_error(hdl, EZFS_INVALIDNAME,
       di->errbuf));
  }

  atptrf = strchr(fromsnap, '@');
  ASSERT(atptrf != ((void*)0));
  fdslen = atptrf - fromsnap;

  di->fromsnap = zfs_strdup(hdl, fromsnap);
  di->ds = zfs_strdup(hdl, fromsnap);
  di->ds[fdslen] = '\0';


  return (make_temp_snapshot(di));
 }

 (void) snprintf(di->errbuf, sizeof (di->errbuf),
     dgettext(TEXT_DOMAIN,
     "Unable to determine which snapshots to compare"));

 atptrf = strchr(fromsnap, '@');
 atptrt = strchr(tosnap, '@');
 fdslen = atptrf ? atptrf - fromsnap : strlen(fromsnap);
 tdslen = atptrt ? atptrt - tosnap : strlen(tosnap);
 fsnlen = strlen(fromsnap) - fdslen;
 tsnlen = strlen(tosnap) - tdslen;

 if (fsnlen <= 1 || tsnlen == 1 || (fdslen == 0 && tdslen == 0) ||
     (fsnlen == 0 && tsnlen == 0)) {
  return (zfs_error(hdl, EZFS_INVALIDNAME, di->errbuf));
 } else if ((fdslen > 0 && tdslen > 0) &&
     ((tdslen != fdslen || strncmp(fromsnap, tosnap, fdslen) != 0))) {




  char origin[ZFS_MAX_DATASET_NAME_LEN];
  zprop_source_t src;
  zfs_handle_t *zhp;

  di->ds = zfs_alloc(di->zhp->zfs_hdl, tdslen + 1);
  (void) strncpy(di->ds, tosnap, tdslen);
  di->ds[tdslen] = '\0';

  zhp = zfs_open(hdl, di->ds, ZFS_TYPE_FILESYSTEM);
  while (zhp != ((void*)0)) {
   if (zfs_prop_get(zhp, ZFS_PROP_ORIGIN, origin,
       sizeof (origin), &src, ((void*)0), 0, B_FALSE) != 0) {
    (void) zfs_close(zhp);
    zhp = ((void*)0);
    break;
   }
   if (strncmp(origin, fromsnap, fsnlen) == 0)
    break;

   (void) zfs_close(zhp);
   zhp = zfs_open(hdl, origin, ZFS_TYPE_FILESYSTEM);
  }

  if (zhp == ((void*)0)) {
   (void) snprintf(di->errbuf, sizeof (di->errbuf),
       dgettext(TEXT_DOMAIN,
       "Not an earlier snapshot from the same fs"));
   return (zfs_error(hdl, EZFS_INVALIDNAME, di->errbuf));
  } else {
   (void) zfs_close(zhp);
  }

  di->isclone = B_TRUE;
  di->fromsnap = zfs_strdup(hdl, fromsnap);
  if (tsnlen) {
   di->tosnap = zfs_strdup(hdl, tosnap);
  } else {
   return (make_temp_snapshot(di));
  }
 } else {
  int dslen = fdslen ? fdslen : tdslen;

  di->ds = zfs_alloc(hdl, dslen + 1);
  (void) strncpy(di->ds, fdslen ? fromsnap : tosnap, dslen);
  di->ds[dslen] = '\0';

  di->fromsnap = zfs_asprintf(hdl, "%s%s", di->ds, atptrf);
  if (tsnlen) {
   di->tosnap = zfs_asprintf(hdl, "%s%s", di->ds, atptrt);
  } else {
   return (make_temp_snapshot(di));
  }
 }
 return (0);
}
