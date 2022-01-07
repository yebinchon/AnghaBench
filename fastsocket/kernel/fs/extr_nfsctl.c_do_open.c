
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int mnt_root; } ;
struct TYPE_3__ {int mnt; int dentry; } ;
struct nameidata {TYPE_1__ path; } ;
struct file {int dummy; } ;


 struct file* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int MAY_READ ;
 int MAY_WRITE ;
 int O_RDWR ;
 int current_cred () ;
 struct file* dentry_open (int ,int ,int,int ) ;
 struct vfsmount* do_kern_mount (char*,int ,char*,int *) ;
 int may_open (TYPE_1__*,int,int) ;
 int mntput (struct vfsmount*) ;
 int path_put (TYPE_1__*) ;
 int vfs_path_lookup (int ,struct vfsmount*,char*,int ,struct nameidata*) ;

__attribute__((used)) static struct file *do_open(char *name, int flags)
{
 struct nameidata nd;
 struct vfsmount *mnt;
 int error;

 mnt = do_kern_mount("nfsd", 0, "nfsd", ((void*)0));
 if (IS_ERR(mnt))
  return (struct file *)mnt;

 error = vfs_path_lookup(mnt->mnt_root, mnt, name, 0, &nd);
 mntput(mnt);
 if (error)
  return ERR_PTR(error);

 if (flags == O_RDWR)
  error = may_open(&nd.path, MAY_READ|MAY_WRITE, flags);
 else
  error = may_open(&nd.path, MAY_WRITE, flags);

 if (!error)
  return dentry_open(nd.path.dentry, nd.path.mnt, flags,
       current_cred());

 path_put(&nd.path);
 return ERR_PTR(error);
}
