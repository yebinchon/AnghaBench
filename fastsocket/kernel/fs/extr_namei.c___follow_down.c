
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vfsmount {int mnt_root; } ;
struct path {TYPE_2__* dentry; struct vfsmount* mnt; } ;
struct TYPE_7__ {TYPE_1__* d_op; int d_flags; } ;
struct TYPE_6__ {int (* d_manage ) (TYPE_2__*,int) ;} ;


 unsigned int ACCESS_ONCE (int ) ;
 int BUG_ON (int) ;
 unsigned int DCACHE_MANAGED_DENTRY ;
 unsigned int DCACHE_MANAGE_TRANSIT ;
 unsigned int DCACHE_MOUNTED ;
 int EISDIR ;
 TYPE_2__* dget (int ) ;
 int dput (TYPE_2__*) ;
 struct vfsmount* lookup_mnt (struct path*) ;
 unsigned int managed_d_mountpoint (TYPE_2__*) ;
 int mntput (struct vfsmount*) ;
 int stub1 (TYPE_2__*,int) ;
 int unlikely (unsigned int) ;

int __follow_down(struct path *path, bool mounting_here)
{
 unsigned managed;
 int ret;

 while (managed = ACCESS_ONCE(path->dentry->d_flags)|
  managed_d_mountpoint(path->dentry),
        unlikely(managed & DCACHE_MANAGED_DENTRY)) {
  if (managed & DCACHE_MANAGE_TRANSIT) {
   BUG_ON(!path->dentry->d_op);
   BUG_ON(!path->dentry->d_op->d_manage);
   ret = path->dentry->d_op->d_manage(path->dentry, mounting_here);
   if (ret < 0)
    return ret == -EISDIR ? 0 : ret;
  }


  if (managed & DCACHE_MOUNTED) {
   struct vfsmount *mounted = lookup_mnt(path);
   if (!mounted)
    break;
   dput(path->dentry);
   mntput(path->mnt);
   path->mnt = mounted;
   path->dentry = dget(mounted->mnt_root);
   continue;
  }


  break;
 }
 return 0;
}
