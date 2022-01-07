
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;
struct mnttab {char* mnt_mntopts; } ;
typedef int smbshareopts ;
typedef int shareopts ;
typedef int mountpoint ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ GLOBAL_ZONEID ;
 int MNTOPT_REMOUNT ;


 scalar_t__ ZFS_CANMOUNT_NOAUTO ;
 scalar_t__ ZFS_CANMOUNT_OFF ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_CANMOUNT ;
 int ZFS_PROP_INCONSISTENT ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_RECEIVE_RESUME_TOKEN ;
 int ZFS_PROP_SHARENFS ;
 int ZFS_PROP_SHARESMB ;
 int ZFS_PROP_ZONED ;
 int ZFS_TYPE_FILESYSTEM ;
 int assert (int) ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 scalar_t__ getzoneid () ;
 int hasmntopt (struct mnttab*,int ) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int verify (int) ;
 char* zfs_get_name (int *) ;
 int zfs_get_type (int *) ;
 int zfs_is_mounted (int *,int *) ;
 int zfs_is_shared_nfs (int *,int *) ;
 int zfs_is_shared_smb (int *,int *) ;
 int zfs_mount (int *,char const*,int) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;
 int zfs_share_nfs (int *) ;
 int zfs_share_smb (int *) ;
 int zfs_shareall (int *) ;

__attribute__((used)) static int
share_mount_one(zfs_handle_t *zhp, int op, int flags, char *protocol,
    boolean_t explicit, const char *options)
{
 char mountpoint[ZFS_MAXPROPLEN];
 char shareopts[ZFS_MAXPROPLEN];
 char smbshareopts[ZFS_MAXPROPLEN];
 const char *cmdname = op == 128 ? "share" : "mount";
 struct mnttab mnt;
 uint64_t zoned, canmount;
 boolean_t shared_nfs, shared_smb;

 assert(zfs_get_type(zhp) & ZFS_TYPE_FILESYSTEM);







 zoned = zfs_prop_get_int(zhp, ZFS_PROP_ZONED);

 if (zoned && getzoneid() == GLOBAL_ZONEID) {
  if (!explicit)
   return (0);

  (void) fprintf(stderr, gettext("cannot %s '%s': "
      "dataset is exported to a local zone\n"), cmdname,
      zfs_get_name(zhp));
  return (1);

 } else if (!zoned && getzoneid() != GLOBAL_ZONEID) {
  if (!explicit)
   return (0);

  (void) fprintf(stderr, gettext("cannot %s '%s': "
      "permission denied\n"), cmdname,
      zfs_get_name(zhp));
  return (1);
 }






 verify(zfs_prop_get(zhp, ZFS_PROP_MOUNTPOINT, mountpoint,
     sizeof (mountpoint), ((void*)0), ((void*)0), 0, B_FALSE) == 0);
 verify(zfs_prop_get(zhp, ZFS_PROP_SHARENFS, shareopts,
     sizeof (shareopts), ((void*)0), ((void*)0), 0, B_FALSE) == 0);
 verify(zfs_prop_get(zhp, ZFS_PROP_SHARESMB, smbshareopts,
     sizeof (smbshareopts), ((void*)0), ((void*)0), 0, B_FALSE) == 0);

 if (op == 128 && strcmp(shareopts, "off") == 0 &&
     strcmp(smbshareopts, "off") == 0) {
  if (!explicit)
   return (0);

  (void) fprintf(stderr, gettext("cannot share '%s': "
      "legacy share\n"), zfs_get_name(zhp));
  (void) fprintf(stderr, gettext("to "
      "share this filesystem set "
      "sharenfs property on\n"));
  return (1);
 }






 if (strcmp(mountpoint, "legacy") == 0) {
  if (!explicit)
   return (0);

  (void) fprintf(stderr, gettext("cannot %s '%s': "
      "legacy mountpoint\n"), cmdname, zfs_get_name(zhp));
  (void) fprintf(stderr, gettext("use %s(8) to "
      "%s this filesystem\n"), cmdname, cmdname);
  return (1);
 }

 if (strcmp(mountpoint, "none") == 0) {
  if (!explicit)
   return (0);

  (void) fprintf(stderr, gettext("cannot %s '%s': no "
      "mountpoint set\n"), cmdname, zfs_get_name(zhp));
  return (1);
 }
 canmount = zfs_prop_get_int(zhp, ZFS_PROP_CANMOUNT);
 if (canmount == ZFS_CANMOUNT_OFF) {
  if (!explicit)
   return (0);

  (void) fprintf(stderr, gettext("cannot %s '%s': "
      "'canmount' property is set to 'off'\n"), cmdname,
      zfs_get_name(zhp));
  return (1);
 } else if (canmount == ZFS_CANMOUNT_NOAUTO && !explicit) {
  return (0);
 }





 if (zfs_prop_get_int(zhp, ZFS_PROP_INCONSISTENT) &&
     zfs_prop_get(zhp, ZFS_PROP_RECEIVE_RESUME_TOKEN,
     ((void*)0), 0, ((void*)0), ((void*)0), 0, B_TRUE) == 0) {
  if (!explicit)
   return (0);

  (void) fprintf(stderr, gettext("cannot %s '%s': "
      "Contains partially-completed state from "
      "\"zfs receive -r\", which can be resumed with "
      "\"zfs send -t\"\n"),
      cmdname, zfs_get_name(zhp));
  return (1);
 }
 switch (op) {
 case 128:

  shared_nfs = zfs_is_shared_nfs(zhp, ((void*)0));
  shared_smb = zfs_is_shared_smb(zhp, ((void*)0));

  if ((shared_nfs && shared_smb) ||
      (shared_nfs && strcmp(shareopts, "on") == 0 &&
      strcmp(smbshareopts, "off") == 0) ||
      (shared_smb && strcmp(smbshareopts, "on") == 0 &&
      strcmp(shareopts, "off") == 0)) {
   if (!explicit)
    return (0);

   (void) fprintf(stderr, gettext("cannot share "
       "'%s': filesystem already shared\n"),
       zfs_get_name(zhp));
   return (1);
  }

  if (!zfs_is_mounted(zhp, ((void*)0)) &&
      zfs_mount(zhp, ((void*)0), 0) != 0)
   return (1);

  if (protocol == ((void*)0)) {
   if (zfs_shareall(zhp) != 0)
    return (1);
  } else if (strcmp(protocol, "nfs") == 0) {
   if (zfs_share_nfs(zhp))
    return (1);
  } else if (strcmp(protocol, "smb") == 0) {
   if (zfs_share_smb(zhp))
    return (1);
  } else {
   (void) fprintf(stderr, gettext("cannot share "
       "'%s': invalid share type '%s' "
       "specified\n"),
       zfs_get_name(zhp), protocol);
   return (1);
  }

  break;

 case 129:
  if (options == ((void*)0))
   mnt.mnt_mntopts = "";
  else
   mnt.mnt_mntopts = (char *)options;

  if (!hasmntopt(&mnt, MNTOPT_REMOUNT) &&
      zfs_is_mounted(zhp, ((void*)0))) {
   if (!explicit)
    return (0);

   (void) fprintf(stderr, gettext("cannot mount "
       "'%s': filesystem already mounted\n"),
       zfs_get_name(zhp));
   return (1);
  }

  if (zfs_mount(zhp, options, flags) != 0)
   return (1);
  break;
 }

 return (0);
}
