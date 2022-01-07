
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
typedef struct rpc_cred nfs_open_dir_context ;
struct inode {int dummy; } ;
struct TYPE_12__ {TYPE_5__* mnt; TYPE_4__* dentry; } ;
struct file {TYPE_6__ f_path; struct rpc_cred* private_data; } ;
struct TYPE_11__ {TYPE_4__* mnt_root; } ;
struct TYPE_9__ {int name; } ;
struct TYPE_10__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;


 int FILE ;
 scalar_t__ IS_ERR (struct rpc_cred*) ;
 int NFSIOS_VFSOPEN ;
 int NFS_SERVER (struct inode*) ;
 int PTR_ERR (struct rpc_cred*) ;
 int __nfs_revalidate_inode (int ,struct inode*) ;
 struct rpc_cred* alloc_nfs_open_dir_context (struct inode*,struct rpc_cred*) ;
 int dfprintk (int ,char*,int ,int ) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int put_rpccred (struct rpc_cred*) ;
 struct rpc_cred* rpc_lookup_cred () ;

__attribute__((used)) static int
nfs_opendir(struct inode *inode, struct file *filp)
{
 int res = 0;
 struct nfs_open_dir_context *ctx;
 struct rpc_cred *cred;

 dfprintk(FILE, "NFS: open dir(%s/%s)\n",
   filp->f_path.dentry->d_parent->d_name.name,
   filp->f_path.dentry->d_name.name);

 nfs_inc_stats(inode, NFSIOS_VFSOPEN);

 cred = rpc_lookup_cred();
 if (IS_ERR(cred))
  return PTR_ERR(cred);
 ctx = alloc_nfs_open_dir_context(inode, cred);
 if (IS_ERR(ctx)) {
  res = PTR_ERR(ctx);
  goto out;
 }
 filp->private_data = ctx;
 if (filp->f_path.dentry == filp->f_path.mnt->mnt_root) {




  __nfs_revalidate_inode(NFS_SERVER(inode), inode);
 }
out:
 put_rpccred(cred);
 return res;
}
