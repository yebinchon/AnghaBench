
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char* zfs_name; int * zfs_hdl; int zfs_type; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_15__ {char* zc_name; char* zc_value; int zc_cookie; int zc_objset_type; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
struct TYPE_16__ {scalar_t__ recurse; scalar_t__ nounmount; scalar_t__ forceunmount; } ;
typedef TYPE_3__ renameflags_t ;
typedef int property ;
typedef int prop_changelist_t ;
typedef int parent ;
typedef int libzfs_handle_t ;
typedef int errbuf ;


 int B_FALSE ;
 scalar_t__ B_TRUE ;
 int CL_GATHER_DONT_UNMOUNT ;
 int DMU_OST_ZFS ;
 int DMU_OST_ZVOL ;
 scalar_t__ EEXIST ;
 scalar_t__ EINVAL ;
 int EZFS_BADTYPE ;
 int EZFS_CROSSTARGET ;
 int EZFS_EXISTS ;
 int EZFS_INVALIDNAME ;
 int EZFS_ZONED ;
 scalar_t__ GLOBAL_ZONEID ;
 int MS_FORCE ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_RENAME ;
 scalar_t__ ZFS_IS_VOLUME (TYPE_1__*) ;
 int ZFS_MAXPROPLEN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_NAME ;
 int ZFS_PROP_ZONED ;
 int ZFS_TYPE_BOOKMARK ;
 int ZFS_TYPE_DATASET ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_SNAPSHOT ;
 int assert (scalar_t__) ;
 int changelist_free (int *) ;
 int * changelist_gather (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ changelist_haszonedchild (int *) ;
 int changelist_postfix (int *) ;
 int changelist_prefix (int *) ;
 int changelist_rename (int *,int ,char const*) ;
 scalar_t__ check_parents (int *,char const*,int *,int ,int *) ;
 char* dgettext (int ,char*) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ getzoneid () ;
 scalar_t__ is_descendant (char*,char const*) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strchr (char const*,char const) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlcat (char*,char const*,int) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int verify (int ) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zfs_get_name (TYPE_1__*) ;
 int zfs_ioctl (int *,int ,TYPE_2__*) ;
 TYPE_1__* zfs_open (int *,char*,int ) ;
 scalar_t__ zfs_prop_get (TYPE_1__*,int ,char*,int,int *,int *,int ,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_standard_error (int *,scalar_t__,char*) ;
 char* zfs_strdup (int *,char const*) ;
 int zfs_validate_name (int *,char const*,int ,scalar_t__) ;

int
zfs_rename(zfs_handle_t *zhp, const char *source, const char *target,
    renameflags_t flags)
{
 int ret = 0;
 zfs_cmd_t zc = { 0 };
 char *delim;
 prop_changelist_t *cl = ((void*)0);
 zfs_handle_t *zhrp = ((void*)0);
 char *parentname = ((void*)0);
 char parent[ZFS_MAX_DATASET_NAME_LEN];
 char property[ZFS_MAXPROPLEN];
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 char errbuf[1024];


 if (strcmp(zhp->zfs_name, target) == 0)
  return (0);

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "cannot rename to '%s'"), target);

 if (source != ((void*)0)) {




  assert(flags.recurse);

  (void) strlcat(zhp->zfs_name, "@", sizeof(zhp->zfs_name));
  (void) strlcat(zhp->zfs_name, source, sizeof(zhp->zfs_name));
  zhp->zfs_type = ZFS_TYPE_SNAPSHOT;
 }


 if (!zfs_validate_name(hdl, zhp->zfs_name, zhp->zfs_type, B_TRUE))
  return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));




 if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT ||
     zhp->zfs_type == ZFS_TYPE_BOOKMARK) {
  const char sep = zhp->zfs_type == ZFS_TYPE_SNAPSHOT ? '@' : '#';

  if ((strchr(target, sep) == ((void*)0)) || *target == sep) {




   (void) strlcpy(parent, zhp->zfs_name, sizeof (parent));
   delim = strchr(parent, sep);
   if (strchr(target, sep) == ((void*)0))
    *(++delim) = '\0';
   else
    *delim = '\0';
   (void) strlcat(parent, target, sizeof (parent));
   target = parent;
  } else {



   delim = strchr(target, sep);
   if (strncmp(zhp->zfs_name, target, delim - target)
       != 0 || zhp->zfs_name[delim - target] != sep) {
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "%s must be part of same dataset"),
        zhp->zfs_type == ZFS_TYPE_SNAPSHOT ?
        "snapshots" : "bookmarks");
    return (zfs_error(hdl, EZFS_CROSSTARGET,
        errbuf));
   }
  }

  if (!zfs_validate_name(hdl, target, zhp->zfs_type, B_TRUE))
   return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));
 } else {
  if (flags.recurse) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "recursive rename must be a snapshot"));
   return (zfs_error(hdl, EZFS_BADTYPE, errbuf));
  }

  if (!zfs_validate_name(hdl, target, zhp->zfs_type, B_TRUE))
   return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));


  if (check_parents(hdl, target, ((void*)0), B_FALSE, ((void*)0)) != 0)
   return (-1);


  verify((delim = strchr(target, '/')) != ((void*)0));
  if (strncmp(zhp->zfs_name, target, delim - target) != 0 ||
      zhp->zfs_name[delim - target] != '/') {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "datasets must be within same pool"));
   return (zfs_error(hdl, EZFS_CROSSTARGET, errbuf));
  }


  if (is_descendant(zhp->zfs_name, target)) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "New dataset name cannot be a descendant of "
       "current dataset name"));
   return (zfs_error(hdl, EZFS_INVALIDNAME, errbuf));
  }
 }

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "cannot rename '%s'"), zhp->zfs_name);

 if (getzoneid() == GLOBAL_ZONEID &&
     zfs_prop_get_int(zhp, ZFS_PROP_ZONED)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "dataset is used in a non-global zone"));
  return (zfs_error(hdl, EZFS_ZONED, errbuf));
 }





 if (zhp->zfs_type == ZFS_TYPE_FILESYSTEM &&
     !flags.recurse && !flags.nounmount &&
     zfs_prop_get(zhp, ZFS_PROP_MOUNTPOINT, property,
     sizeof (property), ((void*)0), ((void*)0), 0, B_FALSE) == 0 &&
     (strcmp(property, "legacy") == 0 ||
      strcmp(property, "none") == 0)) {
  flags.nounmount = B_TRUE;
 }
 if (flags.recurse) {
  parentname = zfs_strdup(zhp->zfs_hdl, zhp->zfs_name);
  if (parentname == ((void*)0)) {
   ret = -1;
   goto error;
  }
  delim = strchr(parentname, '@');
  *delim = '\0';
  zhrp = zfs_open(zhp->zfs_hdl, parentname, ZFS_TYPE_DATASET);
  if (zhrp == ((void*)0)) {
   ret = -1;
   goto error;
  }
 } else if (zhp->zfs_type != ZFS_TYPE_SNAPSHOT &&
     zhp->zfs_type != ZFS_TYPE_BOOKMARK) {
  if ((cl = changelist_gather(zhp, ZFS_PROP_NAME,
      flags.nounmount ? CL_GATHER_DONT_UNMOUNT : 0,
      flags.forceunmount ? MS_FORCE : 0)) == ((void*)0)) {
   return (-1);
  }

  if (changelist_haszonedchild(cl)) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "child dataset with inherited mountpoint is used "
       "in a non-global zone"));
   (void) zfs_error(hdl, EZFS_ZONED, errbuf);
   ret = -1;
   goto error;
  }

  if ((ret = changelist_prefix(cl)) != 0)
   goto error;
 }

 if (ZFS_IS_VOLUME(zhp))
  zc.zc_objset_type = DMU_OST_ZVOL;
 else
  zc.zc_objset_type = DMU_OST_ZFS;

 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
 (void) strlcpy(zc.zc_value, target, sizeof (zc.zc_value));

 zc.zc_cookie = flags.recurse ? 1 : 0;
 if (flags.nounmount)
  zc.zc_cookie |= 2;

 if ((ret = zfs_ioctl(zhp->zfs_hdl, ZFS_IOC_RENAME, &zc)) != 0) {




  (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
      "cannot rename '%s'"), zc.zc_name);

  if (flags.recurse && errno == EEXIST) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "a child dataset already has a snapshot "
       "with the new name"));
   (void) zfs_error(hdl, EZFS_EXISTS, errbuf);
  } else if (errno == EINVAL) {
   (void) zfs_error(hdl, EZFS_INVALIDNAME, errbuf);
  } else {
   (void) zfs_standard_error(zhp->zfs_hdl, errno, errbuf);
  }





  if (cl != ((void*)0))
   (void) changelist_postfix(cl);
 } else {
  if (cl != ((void*)0)) {
   changelist_rename(cl, zfs_get_name(zhp), target);
   ret = changelist_postfix(cl);
  }
 }

error:
 if (parentname != ((void*)0)) {
  free(parentname);
 }
 if (zhrp != ((void*)0)) {
  zfs_close(zhrp);
 }
 if (cl != ((void*)0)) {
  changelist_free(cl);
 }
 return (ret);
}
