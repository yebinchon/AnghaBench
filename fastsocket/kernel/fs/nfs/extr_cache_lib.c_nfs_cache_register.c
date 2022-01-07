
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int mnt_root; } ;
struct TYPE_2__ {int dentry; } ;
struct nameidata {TYPE_1__ path; } ;
struct cache_detail {int name; } ;


 scalar_t__ IS_ERR (struct vfsmount*) ;
 int PTR_ERR (struct vfsmount*) ;
 int path_put (TYPE_1__*) ;
 struct vfsmount* rpc_get_mount () ;
 int rpc_put_mount () ;
 int sunrpc_cache_register_pipefs (int ,int ,int,struct cache_detail*) ;
 int vfs_path_lookup (int ,struct vfsmount*,char*,int ,struct nameidata*) ;

int nfs_cache_register(struct cache_detail *cd)
{
 struct nameidata nd;
 struct vfsmount *mnt;
 int ret;

 mnt = rpc_get_mount();
 if (IS_ERR(mnt))
  return PTR_ERR(mnt);
 ret = vfs_path_lookup(mnt->mnt_root, mnt, "/cache", 0, &nd);
 if (ret)
  goto err;
 ret = sunrpc_cache_register_pipefs(nd.path.dentry,
   cd->name, 0600, cd);
 path_put(&nd.path);
 if (!ret)
  return ret;
err:
 rpc_put_mount();
 return ret;
}
