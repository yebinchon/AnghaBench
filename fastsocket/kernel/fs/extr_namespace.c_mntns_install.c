
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {int dentry; TYPE_1__* mnt; } ;
struct nsproxy {struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {TYPE_1__* root; } ;
struct fs_struct {int users; } ;
struct TYPE_4__ {struct fs_struct* fs; } ;
struct TYPE_3__ {int mnt_root; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_CHROOT ;
 int EINVAL ;
 int capable (int ) ;
 TYPE_2__* current ;
 scalar_t__ d_mountpoint (int ) ;
 scalar_t__ follow_down (struct path*) ;
 int get_mnt_ns (struct mnt_namespace*) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;
 int put_mnt_ns (struct mnt_namespace*) ;
 int set_fs_pwd (struct fs_struct*,struct path*) ;
 int set_fs_root (struct fs_struct*,struct path*) ;

__attribute__((used)) static int mntns_install(struct nsproxy *nsproxy, void *ns)
{
 struct fs_struct *fs = current->fs;
 struct mnt_namespace *mnt_ns = ns;
 struct path root;

 if (!capable(CAP_SYS_ADMIN) || !capable(CAP_SYS_CHROOT))
  return -EINVAL;

 if (fs->users != 1)
  return -EINVAL;

 get_mnt_ns(mnt_ns);
 put_mnt_ns(nsproxy->mnt_ns);
 nsproxy->mnt_ns = mnt_ns;


 root.mnt = mnt_ns->root;
 root.dentry = mnt_ns->root->mnt_root;
 path_get(&root);
 while(d_mountpoint(root.dentry) && follow_down(&root))
  ;


 set_fs_pwd(fs, &root);
 set_fs_root(fs, &root);

 path_put(&root);
 return 0;
}
