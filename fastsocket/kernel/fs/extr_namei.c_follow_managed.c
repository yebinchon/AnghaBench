
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vfsmount {int mnt_root; } ;
struct path {struct vfsmount* mnt; TYPE_2__* dentry; } ;
struct TYPE_7__ {TYPE_1__* d_op; int d_flags; } ;
struct TYPE_6__ {int (* d_manage ) (TYPE_2__*,int) ;} ;


 unsigned int ACCESS_ONCE (int ) ;
 int BUG_ON (int) ;
 unsigned int DCACHE_MANAGED_DENTRY ;
 unsigned int DCACHE_MANAGE_TRANSIT ;
 unsigned int DCACHE_MOUNTED ;
 unsigned int DCACHE_NEED_AUTOMOUNT ;
 int EISDIR ;
 TYPE_2__* dget (int ) ;
 int dput (TYPE_2__*) ;
 int follow_automount (struct path*,unsigned int,int*) ;
 struct vfsmount* lookup_mnt (struct path*) ;
 unsigned int managed_d_mountpoint (TYPE_2__*) ;
 int mntput (struct vfsmount*) ;
 int stub1 (TYPE_2__*,int) ;
 int unlikely (int) ;

__attribute__((used)) static int follow_managed(struct path *path, unsigned flags)
{
 struct vfsmount *mnt = path->mnt;
 unsigned managed;
 bool need_mntput = 0;
 int ret = 0;




 while (managed = ACCESS_ONCE(path->dentry->d_flags)|
  managed_d_mountpoint(path->dentry),
        managed &= DCACHE_MANAGED_DENTRY,
        unlikely(managed != 0)) {


  if (managed & DCACHE_MANAGE_TRANSIT) {
   BUG_ON(!path->dentry->d_op);
   BUG_ON(!path->dentry->d_op->d_manage);
   ret = path->dentry->d_op->d_manage(path->dentry, 0);
   if (ret < 0)
    break;
  }


  if (managed & DCACHE_MOUNTED) {
   struct vfsmount *mounted = lookup_mnt(path);
   if (mounted) {
    dput(path->dentry);
    if (need_mntput)
     mntput(path->mnt);
    path->mnt = mounted;
    path->dentry = dget(mounted->mnt_root);
    need_mntput = 1;
    continue;
   }





  }


  if (managed & DCACHE_NEED_AUTOMOUNT) {
   ret = follow_automount(path, flags, &need_mntput);
   if (ret < 0)
    break;
   continue;
  }


  break;
 }

 if (need_mntput && path->mnt == mnt)
  mntput(path->mnt);
 if (ret == -EISDIR)
  ret = 0;
 return ret;
}
