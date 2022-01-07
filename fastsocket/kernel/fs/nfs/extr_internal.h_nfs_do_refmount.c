
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct rpc_clnt {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 struct vfsmount* ERR_PTR (int ) ;

__attribute__((used)) static inline
struct vfsmount *nfs_do_refmount(struct rpc_clnt *client, const struct vfsmount *mnt_parent, struct dentry *dentry)
{
 return ERR_PTR(-ENOENT);
}
