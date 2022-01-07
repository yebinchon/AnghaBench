
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_type_t ;
typedef int zfs_handle_t ;
struct statfs {int dummy; } ;
struct stat64 {scalar_t__ st_dev; } ;
struct extmnttab {char* mnt_special; int mnt_fstype; int mnt_minor; int mnt_major; } ;
struct TYPE_4__ {int libzfs_mnttab; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int MNTTYPE_ZFS ;
 int ZFS_TYPE_FILESYSTEM ;
 int errno ;
 int fprintf (int ,char*,char*,...) ;
 int getextmntent (int ,struct extmnttab*,int ) ;
 char* gettext (char*) ;
 scalar_t__ makedevice (int ,int ) ;
 int rewind (int ) ;
 scalar_t__ stat64 (char*,struct stat64*) ;
 int statfs (char*,struct statfs*) ;
 int statfs2mnttab (struct statfs*,struct extmnttab*) ;
 int stderr ;
 scalar_t__ strcmp (int ,int ) ;
 char* strerror (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int * zfs_open (TYPE_1__*,char*,int ) ;

zfs_handle_t *
zfs_path_to_zhandle(libzfs_handle_t *hdl, char *path, zfs_type_t argtype)
{
 struct stat64 statbuf;
 struct extmnttab entry;
 int ret;

 if (path[0] != '/' && strncmp(path, "./", strlen("./")) != 0) {



  return (zfs_open(hdl, path, argtype));
 }

 if (stat64(path, &statbuf) != 0) {
  (void) fprintf(stderr, "%s: %s\n", path, strerror(errno));
  return (((void*)0));
 }
 {
  struct statfs sfs;

  ret = statfs(path, &sfs);
  if (ret == 0)
   statfs2mnttab(&sfs, &entry);
  else {
   (void) fprintf(stderr, "%s: %s\n", path,
       strerror(errno));
  }
 }

 if (ret != 0) {
  return (((void*)0));
 }

 if (strcmp(entry.mnt_fstype, MNTTYPE_ZFS) != 0) {
  (void) fprintf(stderr, gettext("'%s': not a ZFS filesystem\n"),
      path);
  return (((void*)0));
 }

 return (zfs_open(hdl, entry.mnt_special, ZFS_TYPE_FILESYSTEM));
}
