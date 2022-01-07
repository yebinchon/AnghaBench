
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int PTR_ERR (struct vfsmount*) ;
 int __do_add_mount (struct vfsmount*,struct path*,int) ;
 int capable (int ) ;
 struct vfsmount* do_kern_mount (char*,int,char*,void*) ;
 int lock_kernel () ;
 int mntput (struct vfsmount*) ;
 int unlock_kernel () ;

__attribute__((used)) static int do_new_mount(struct path *path, char *type, int flags,
   int mnt_flags, char *name, void *data)
{
 struct vfsmount *mnt;
 int err;

 if (!type)
  return -EINVAL;


 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 lock_kernel();
 mnt = do_kern_mount(type, flags, name, data);
 unlock_kernel();
 if (IS_ERR(mnt))
  return PTR_ERR(mnt);

 err = __do_add_mount(mnt, path, mnt_flags);
 if (err)
  mntput(mnt);
 return err;
}
