
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int mnt_root; } ;
struct path {int dentry; struct vfsmount* mnt; } ;


 scalar_t__ d_mountpoint (int ) ;
 int dget (int ) ;
 int dput (int ) ;
 struct vfsmount* lookup_mnt (struct path*) ;
 int mntput (struct vfsmount*) ;

__attribute__((used)) static void follow_mount(struct path *path)
{
 while (d_mountpoint(path->dentry)) {
  struct vfsmount *mounted = lookup_mnt(path);
  if (!mounted)
   break;
  dput(path->dentry);
  mntput(path->mnt);
  path->mnt = mounted;
  path->dentry = dget(mounted->mnt_root);
 }
}
