
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zfs_type; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct zfs_open_bookmarks_cb_data {char const* member_0; TYPE_1__* zhp; int * member_1; } ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int dsname ;


 int B_FALSE ;
 int EZFS_BADTYPE ;
 int EZFS_INVALIDNAME ;
 int EZFS_NOENT ;
 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_SNAPSHOT ;
 int assert (int) ;
 char* dgettext (int ,char*) ;
 scalar_t__ errno ;
 TYPE_1__* make_dataset_handle (int *,char const*) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char const*,char) ;
 int strlcpy (int ,char const*,int) ;
 int strncpy (char*,char const*,int) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_error (int *,int ,char*) ;
 scalar_t__ zfs_iter_bookmarks (TYPE_1__*,int ,struct zfs_open_bookmarks_cb_data*) ;
 int zfs_open_bookmarks_cb ;
 int zfs_standard_error (int *,scalar_t__,char*) ;
 int zfs_validate_name (int *,char const*,int,int ) ;

zfs_handle_t *
zfs_open(libzfs_handle_t *hdl, const char *path, int types)
{
 zfs_handle_t *zhp;
 char errbuf[1024];
 char *bookp;

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "cannot open '%s'"), path);




 if (!zfs_validate_name(hdl, path, types, B_FALSE)) {
  (void) zfs_error(hdl, EZFS_INVALIDNAME, errbuf);
  return (((void*)0));
 }




 bookp = strchr(path, '#');
 if (bookp == ((void*)0)) {




  errno = 0;
  if ((zhp = make_dataset_handle(hdl, path)) == ((void*)0)) {
   (void) zfs_standard_error(hdl, errno, errbuf);
   return (((void*)0));
  }
 } else {
  char dsname[ZFS_MAX_DATASET_NAME_LEN];
  zfs_handle_t *pzhp;
  struct zfs_open_bookmarks_cb_data cb_data = {path, ((void*)0)};





  assert(bookp - path < sizeof (dsname));
  (void) strncpy(dsname, path, bookp - path);
  dsname[bookp - path] = '\0';




  errno = 0;
  if ((pzhp = make_dataset_handle(hdl, dsname)) == ((void*)0)) {
   (void) zfs_standard_error(hdl, errno, errbuf);
   return (((void*)0));
  }




  errno = 0;
  if ((zfs_iter_bookmarks(pzhp, zfs_open_bookmarks_cb,
      &cb_data) == 0) && (cb_data.zhp == ((void*)0))) {
   (void) zfs_error(hdl, EZFS_NOENT, errbuf);
   zfs_close(pzhp);
   return (((void*)0));
  }
  if (cb_data.zhp == ((void*)0)) {
   (void) zfs_standard_error(hdl, errno, errbuf);
   zfs_close(pzhp);
   return (((void*)0));
  }
  zhp = cb_data.zhp;




  zfs_close(pzhp);
 }

 if (zhp == ((void*)0)) {
  char *at = strchr(path, '@');

  if (at != ((void*)0))
   *at = '\0';
  errno = 0;
  if ((zhp = make_dataset_handle(hdl, path)) == ((void*)0)) {
   (void) zfs_standard_error(hdl, errno, errbuf);
   return (((void*)0));
  }
  if (at != ((void*)0))
   *at = '@';
  (void) strlcpy(zhp->zfs_name, path, sizeof (zhp->zfs_name));
  zhp->zfs_type = ZFS_TYPE_SNAPSHOT;
 }

 if (!(types & zhp->zfs_type)) {
  (void) zfs_error(hdl, EZFS_BADTYPE, errbuf);
  zfs_close(zhp);
  return (((void*)0));
 }

 return (zhp);
}
