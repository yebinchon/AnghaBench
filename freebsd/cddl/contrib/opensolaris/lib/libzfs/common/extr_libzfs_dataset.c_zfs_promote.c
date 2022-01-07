
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* dds_origin; } ;
struct TYPE_5__ {TYPE_1__ zfs_dmustats; int zfs_name; int zfs_type; int * zfs_hdl; } ;
typedef TYPE_2__ zfs_handle_t ;
typedef int snapname ;
typedef int libzfs_handle_t ;
typedef int errbuf ;


 int B_TRUE ;

 int EZFS_BADTYPE ;
 int EZFS_EXISTS ;
 int EZFS_INVALIDNAME ;
 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_TYPE_SNAPSHOT ;
 char* dgettext (int ,char*) ;
 int lzc_promote (int ,char*,int) ;
 int snprintf (char*,int,char*,int ) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zfs_standard_error (int *,int,char*) ;
 int zfs_validate_name (int *,int ,int ,int ) ;

int
zfs_promote(zfs_handle_t *zhp)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 char snapname[ZFS_MAX_DATASET_NAME_LEN];
 int ret;
 char errbuf[1024];

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot promote '%s'"), zhp->zfs_name);

 if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "snapshots can not be promoted"));
  return (zfs_error(hdl, EZFS_BADTYPE, errbuf));
 }

 if (zhp->zfs_dmustats.dds_origin[0] == '\0') {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "not a cloned filesystem"));
  return (zfs_error(hdl, EZFS_BADTYPE, errbuf));
 }

 if (!zfs_validate_name(hdl, zhp->zfs_name, zhp->zfs_type, B_TRUE))
  return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));

 ret = lzc_promote(zhp->zfs_name, snapname, sizeof (snapname));

 if (ret != 0) {
  switch (ret) {
  case 128:

   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "conflicting snapshot '%s' from parent '%s'"),
       snapname, zhp->zfs_dmustats.dds_origin);
   return (zfs_error(hdl, EZFS_EXISTS, errbuf));

  default:
   return (zfs_standard_error(hdl, ret, errbuf));
  }
 }
 return (ret);
}
