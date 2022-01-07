
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mntfs ;
typedef int am_nfs_handle_t ;


 int ENOENT ;
 int S_IFDIR ;
 int S_IFMT ;
 int XLOG_ERROR ;
 int dlog (char*,char*,char*) ;
 int mkdirs (char*,int) ;
 int mount_nfs_fh (int *,char*,char*,int *) ;
 int plog (int ,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int
do_mount(am_nfs_handle_t *fhp, char *mntdir, char *fs_name, mntfs *mf)
{
  struct stat stb;

  dlog("amfs_host: mounting fs %s on %s\n", fs_name, mntdir);

  (void) mkdirs(mntdir, 0555);
  if (stat(mntdir, &stb) < 0 || (stb.st_mode & S_IFMT) != S_IFDIR) {
    plog(XLOG_ERROR, "No mount point for %s - skipping", mntdir);
    return ENOENT;
  }

  return mount_nfs_fh(fhp, mntdir, fs_name, mf);
}
