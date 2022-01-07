
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int zprop_source_t ;
typedef size_t zfs_share_proto_t ;
struct TYPE_13__ {int zfs_name; TYPE_2__* zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int shareopts ;
typedef int mountpoint ;
struct TYPE_14__ {int libzfs_sharehdl; } ;
typedef TYPE_2__ libzfs_handle_t ;
struct TYPE_12__ {int p_share_err; int p_name; int p_prop; } ;


 int B_FALSE ;
 int EZFS_SHARENFSFAILED ;
 size_t PROTO_END ;
 size_t PROTO_NFS ;
 int SA_INIT_ONE_SHARE_FROM_HANDLE ;
 int SA_OK ;
 int TEXT_DOMAIN ;
 int ZFS_EXPORTS_PATH ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_ZONED ;
 char* _sa_errorstr (int) ;
 int _sa_zfs_process_share (int ,int *,int *,char*,int ,int ,char*,char*,int ) ;
 int dgettext (int ,char*) ;
 int fprintf (int ,char*,size_t) ;
 int fsshare (int ,char*,char*) ;
 TYPE_11__* proto_table ;
 int * share ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int zfs_error_fmt (TYPE_2__*,int ,int ,int ,...) ;
 int zfs_get_name (TYPE_1__*) ;
 int zfs_init_libshare_arg (TYPE_2__*,int ,TYPE_1__*) ;
 int zfs_is_mountable (TYPE_1__*,char*,int,int *) ;
 scalar_t__ zfs_prop_get (TYPE_1__*,int ,char*,int,int *,char*,int,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_sa_enable_share (int *,int ) ;
 int * zfs_sa_find_share (int ,char*) ;

__attribute__((used)) static int
zfs_share_proto(zfs_handle_t *zhp, zfs_share_proto_t *proto)
{
 char mountpoint[ZFS_MAXPROPLEN];
 char shareopts[ZFS_MAXPROPLEN];
 char sourcestr[ZFS_MAXPROPLEN];
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 zfs_share_proto_t *curr_proto;
 zprop_source_t sourcetype;
 int error, ret;

 if (!zfs_is_mountable(zhp, mountpoint, sizeof (mountpoint), ((void*)0)))
  return (0);

 for (curr_proto = proto; *curr_proto != PROTO_END; curr_proto++) {



  if (zfs_prop_get(zhp, proto_table[*curr_proto].p_prop,
      shareopts, sizeof (shareopts), &sourcetype, sourcestr,
      ZFS_MAXPROPLEN, B_FALSE) != 0 ||
      strcmp(shareopts, "off") == 0)
   continue;
  if (zfs_prop_get_int(zhp, ZFS_PROP_ZONED))
   continue;
  if (*curr_proto != PROTO_NFS) {
   fprintf(stderr, "Unsupported share protocol: %d.\n",
       *curr_proto);
   continue;
  }

  if (strcmp(shareopts, "on") == 0)
   error = fsshare(ZFS_EXPORTS_PATH, mountpoint, "");
  else
   error = fsshare(ZFS_EXPORTS_PATH, mountpoint, shareopts);
  if (error != 0)

  {
   (void) zfs_error_fmt(hdl,
       proto_table[*curr_proto].p_share_err,
       dgettext(TEXT_DOMAIN, "cannot share '%s'"),
       zfs_get_name(zhp));
   return (-1);
  }

 }
 return (0);
}
