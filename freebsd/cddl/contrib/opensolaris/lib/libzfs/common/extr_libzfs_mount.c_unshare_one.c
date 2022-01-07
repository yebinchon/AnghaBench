
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t zfs_share_proto_t ;
typedef int * sa_share_t ;
struct TYPE_8__ {int libzfs_sharehdl; } ;
typedef TYPE_1__ libzfs_handle_t ;
struct TYPE_9__ {int p_unshare_err; int p_name; } ;
typedef int FILE ;


 int EOPNOTSUPP ;
 int EZFS_UNSHARENFSFAILED ;
 int MAXPATHLEN ;
 size_t PROTO_NFS ;
 int SA_INIT_ONE_SHARE_FROM_NAME ;
 int SA_OK ;
 int TEXT_DOMAIN ;
 int ZFS_EXPORTS_PATH ;
 int _sa_errorstr (int) ;
 int dgettext (int ,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int fsunshare (int ,char const*) ;
 TYPE_7__* proto_table ;
 int stderr ;
 int strerror (int) ;
 int zfs_error_aux (TYPE_1__*,char*,int ) ;
 int zfs_error_fmt (TYPE_1__*,int ,int ,char const*,...) ;
 int zfs_init_libshare_arg (TYPE_1__*,int ,void*) ;
 int zfs_sa_disable_share (int *,int ) ;
 int * zfs_sa_find_share (int ,char*) ;
 char* zfs_strdup (TYPE_1__*,char const*) ;

__attribute__((used)) static int
unshare_one(libzfs_handle_t *hdl, const char *name, const char *mountpoint,
    zfs_share_proto_t proto)
{
 char buf[MAXPATHLEN];
 FILE *fp;
 int err;

 if (proto != PROTO_NFS) {
  fprintf(stderr, "No SMB support in FreeBSD yet.\n");
  return (EOPNOTSUPP);
 }

 err = fsunshare(ZFS_EXPORTS_PATH, mountpoint);
 if (err != 0) {
  zfs_error_aux(hdl, "%s", strerror(err));
  return (zfs_error_fmt(hdl, EZFS_UNSHARENFSFAILED,
      dgettext(TEXT_DOMAIN,
      "cannot unshare '%s'"), name));
 }

 return (0);
}
