
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {char* sd_snapname; int sd_nvl; int member_0; } ;
typedef TYPE_1__ snapdata_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int fsname ;
typedef int errbuf ;
typedef scalar_t__ boolean_t ;


 int B_TRUE ;
 int EZFS_INVALIDNAME ;
 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 int ZFS_TYPE_VOLUME ;
 char* dgettext (int ,char*) ;
 int fnvlist_add_boolean (int ,char const*) ;
 scalar_t__ nvlist_alloc (int *,int ,int ) ;
 int nvlist_free (int ) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 int verify (int) ;
 int zfs_close (int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_handle_dup (int *) ;
 int * zfs_open (int *,char*,int) ;
 int zfs_snapshot_cb (int ,TYPE_1__*) ;
 int zfs_snapshot_nvl (int *,int ,int *) ;
 int zfs_validate_name (int *,char const*,int ,int ) ;

int
zfs_snapshot(libzfs_handle_t *hdl, const char *path, boolean_t recursive,
    nvlist_t *props)
{
 int ret;
 snapdata_t sd = { 0 };
 char fsname[ZFS_MAX_DATASET_NAME_LEN];
 char *cp;
 zfs_handle_t *zhp;
 char errbuf[1024];

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot snapshot %s"), path);

 if (!zfs_validate_name(hdl, path, ZFS_TYPE_SNAPSHOT, B_TRUE))
  return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));

 (void) strlcpy(fsname, path, sizeof (fsname));
 cp = strchr(fsname, '@');
 *cp = '\0';
 sd.sd_snapname = cp + 1;

 if ((zhp = zfs_open(hdl, fsname, ZFS_TYPE_FILESYSTEM |
     ZFS_TYPE_VOLUME)) == ((void*)0)) {
  return (-1);
 }

 verify(nvlist_alloc(&sd.sd_nvl, NV_UNIQUE_NAME, 0) == 0);
 if (recursive) {
  (void) zfs_snapshot_cb(zfs_handle_dup(zhp), &sd);
 } else {
  fnvlist_add_boolean(sd.sd_nvl, path);
 }

 ret = zfs_snapshot_nvl(hdl, sd.sd_nvl, props);
 nvlist_free(sd.sd_nvl);
 zfs_close(zhp);
 return (ret);
}
