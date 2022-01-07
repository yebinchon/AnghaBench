
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct file {int f_mode; TYPE_1__ f_path; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct rpc_cred*) ;
 int PTR_ERR (struct rpc_cred*) ;
 struct nfs_open_context* alloc_nfs_open_context (int ,struct rpc_cred*,int ) ;
 int nfs_file_set_open_context (struct file*,struct nfs_open_context*) ;
 int nfs_fscache_set_inode_cookie (struct inode*,struct file*) ;
 int put_nfs_open_context (struct nfs_open_context*) ;
 int put_rpccred (struct rpc_cred*) ;
 struct rpc_cred* rpc_lookup_cred () ;

int nfs_open(struct inode *inode, struct file *filp)
{
 struct nfs_open_context *ctx;
 struct rpc_cred *cred;

 cred = rpc_lookup_cred();
 if (IS_ERR(cred))
  return PTR_ERR(cred);
 ctx = alloc_nfs_open_context(filp->f_path.dentry, cred, filp->f_mode);
 put_rpccred(cred);
 if (ctx == ((void*)0))
  return -ENOMEM;
 nfs_file_set_open_context(filp, ctx);
 put_nfs_open_context(ctx);
 nfs_fscache_set_inode_cookie(inode, filp);
 return 0;
}
