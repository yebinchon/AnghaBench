
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int zprop_source_t ;
typedef int zfs_prop_t ;
struct TYPE_11__ {void* dds_inconsistent; void* dds_num_clones; } ;
struct TYPE_12__ {char* zfs_name; char* zfs_mntopts; int * zfs_hdl; TYPE_1__ zfs_dmustats; int zfs_head_type; void* zfs_mntcheck; } ;
typedef TYPE_2__ zfs_handle_t ;
struct TYPE_13__ {int zc_name; int member_0; } ;
typedef TYPE_3__ zfs_cmd_t ;
typedef void* uint64_t ;
struct mnttab {char* mnt_mntopts; } ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int EZFS_BADPROP ;
 char* MNTOPT_ATIME ;
 char* MNTOPT_DEVICES ;
 char* MNTOPT_EXEC ;
 char* MNTOPT_NBMAND ;
 char* MNTOPT_NOATIME ;
 char* MNTOPT_NODEVICES ;
 char* MNTOPT_NOEXEC ;
 char* MNTOPT_NONBMAND ;
 char* MNTOPT_NOSETUID ;
 char* MNTOPT_NOXATTR ;
 char* MNTOPT_RO ;
 char* MNTOPT_RW ;
 char* MNTOPT_SETUID ;
 char* MNTOPT_XATTR ;



 int TEXT_DOMAIN ;
 int ZFS_IOC_OBJSET_ZPLPROPS ;
 int ZPROP_SRC_TEMPORARY ;
 int dgettext (int ,char*) ;
 void* getprop_uint64 (TYPE_2__*,int,char**) ;
 int hasmntopt (struct mnttab*,char*) ;
 scalar_t__ libzfs_mnttab_find (int *,char*,struct mnttab*) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_uint64 (int *,int ,void**) ;
 int strlcpy (int ,char*,int) ;
 int zcmd_alloc_dst_nvlist (int *,TYPE_3__*,int ) ;
 int zcmd_free_nvlists (TYPE_3__*) ;
 int zcmd_read_dst_nvlist (int *,TYPE_3__*,int **) ;
 int zfs_error (int *,int ,int ) ;
 int zfs_error_aux (int *,int ) ;
 int zfs_ioctl (int *,int ,TYPE_3__*) ;
 int zfs_is_recvd_props_mode (TYPE_2__*) ;
 int zfs_prop_get_type (int) ;
 int zfs_prop_readonly (int) ;
 int zfs_prop_setonce (int) ;
 int zfs_prop_to_name (int) ;
 int zfs_prop_valid_for_type (int,int ) ;
 char* zfs_strdup (int *,char*) ;

__attribute__((used)) static int
get_numeric_property(zfs_handle_t *zhp, zfs_prop_t prop, zprop_source_t *src,
    char **source, uint64_t *val)
{
 zfs_cmd_t zc = { 0 };
 nvlist_t *zplprops = ((void*)0);
 struct mnttab mnt;
 char *mntopt_on = ((void*)0);
 char *mntopt_off = ((void*)0);
 boolean_t received = zfs_is_recvd_props_mode(zhp);

 *source = ((void*)0);

 switch (prop) {
 case 151:
  mntopt_on = MNTOPT_ATIME;
  mntopt_off = MNTOPT_NOATIME;
  break;

 case 148:
  mntopt_on = MNTOPT_DEVICES;
  mntopt_off = MNTOPT_NODEVICES;
  break;

 case 147:
  mntopt_on = MNTOPT_EXEC;
  mntopt_off = MNTOPT_NOEXEC;
  break;

 case 138:
  mntopt_on = MNTOPT_RO;
  mntopt_off = MNTOPT_RW;
  break;

 case 134:
  mntopt_on = MNTOPT_SETUID;
  mntopt_off = MNTOPT_NOSETUID;
  break;

 case 128:
  mntopt_on = MNTOPT_XATTR;
  mntopt_off = MNTOPT_NOXATTR;
  break;

 case 142:
  mntopt_on = MNTOPT_NBMAND;
  mntopt_off = MNTOPT_NONBMAND;
  break;

 default:
  break;
 }






 if (!zhp->zfs_mntcheck &&
     (mntopt_on != ((void*)0) || prop == 143)) {
  libzfs_handle_t *hdl = zhp->zfs_hdl;
  struct mnttab entry;

  if (libzfs_mnttab_find(hdl, zhp->zfs_name, &entry) == 0) {
   zhp->zfs_mntopts = zfs_strdup(hdl,
       entry.mnt_mntopts);
   if (zhp->zfs_mntopts == ((void*)0))
    return (-1);
  }

  zhp->zfs_mntcheck = B_TRUE;
 }

 if (zhp->zfs_mntopts == ((void*)0))
  mnt.mnt_mntopts = "";
 else
  mnt.mnt_mntopts = zhp->zfs_mntopts;

 switch (prop) {
 case 151:
 case 148:
 case 147:
 case 138:
 case 134:
 case 128:
 case 142:
  *val = getprop_uint64(zhp, prop, source);

  if (received)
   break;

  if (hasmntopt(&mnt, mntopt_on) && !*val) {
   *val = B_TRUE;
   if (src)
    *src = ZPROP_SRC_TEMPORARY;
  } else if (hasmntopt(&mnt, mntopt_off) && *val) {
   *val = B_FALSE;
   if (src)
    *src = ZPROP_SRC_TEMPORARY;
  }
  break;

 case 150:
 case 129:
 case 139:
 case 137:
 case 135:
 case 136:
 case 145:
 case 132:
 case 146:
 case 133:
  *val = getprop_uint64(zhp, prop, source);

  if (*source == ((void*)0)) {

   *source = zhp->zfs_name;
  }
  break;

 case 143:
  *val = (zhp->zfs_mntopts != ((void*)0));
  break;

 case 140:
  *val = zhp->zfs_dmustats.dds_num_clones;
  break;

 case 130:
 case 141:
 case 131:
 case 149:
  if (!zfs_prop_valid_for_type(prop, zhp->zfs_head_type) ||
      zcmd_alloc_dst_nvlist(zhp->zfs_hdl, &zc, 0) != 0)
   return (-1);
  (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
  if (zfs_ioctl(zhp->zfs_hdl, ZFS_IOC_OBJSET_ZPLPROPS, &zc)) {
   zcmd_free_nvlists(&zc);
   return (-1);
  }
  if (zcmd_read_dst_nvlist(zhp->zfs_hdl, &zc, &zplprops) != 0 ||
      nvlist_lookup_uint64(zplprops, zfs_prop_to_name(prop),
      val) != 0) {
   zcmd_free_nvlists(&zc);
   return (-1);
  }
  nvlist_free(zplprops);
  zcmd_free_nvlists(&zc);
  break;

 case 144:
  *val = zhp->zfs_dmustats.dds_inconsistent;
  break;

 default:
  switch (zfs_prop_get_type(prop)) {
  case 153:
  case 154:
   *val = getprop_uint64(zhp, prop, source);







   if (zfs_prop_readonly(prop) &&
       !zfs_prop_setonce(prop) &&
       *source != ((void*)0) && (*source)[0] == '\0') {
    *source = ((void*)0);
    return (-1);
   }
   break;

  case 152:
  default:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "cannot get non-numeric property"));
   return (zfs_error(zhp->zfs_hdl, EZFS_BADPROP,
       dgettext(TEXT_DOMAIN, "internal error")));
  }
 }

 return (0);
}
