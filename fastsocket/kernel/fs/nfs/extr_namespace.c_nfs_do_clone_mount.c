
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_clone_mount {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rpc_ops; } ;
struct TYPE_3__ {int version; } ;


 int EINVAL ;
 struct vfsmount* ERR_PTR (int ) ;
 int nfs4_xdev_fs_type ;
 int nfs_xdev_fs_type ;
 struct vfsmount* vfs_kern_mount (int *,int ,char const*,struct nfs_clone_mount*) ;

__attribute__((used)) static struct vfsmount *nfs_do_clone_mount(struct nfs_server *server,
        const char *devname,
        struct nfs_clone_mount *mountdata)
{
 return vfs_kern_mount(&nfs_xdev_fs_type, 0, devname, mountdata);

}
