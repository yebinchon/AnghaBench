
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_fattr* rpc_resp; struct nfs3_diropargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; int len; } ;
struct nfs_fattr {int dummy; } ;
struct nfs3_diropargs {int name; int len; int fh; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 size_t NFS3PROC_RMDIR ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int) ;
 int * nfs3_procedures ;
 struct nfs_fattr* nfs_alloc_fattr () ;
 int nfs_free_fattr (struct nfs_fattr*) ;
 int nfs_post_op_update_inode (struct inode*,struct nfs_fattr*) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs3_proc_rmdir(struct inode *dir, struct qstr *name)
{
 struct nfs_fattr *dir_attr;
 struct nfs3_diropargs arg = {
  .fh = NFS_FH(dir),
  .name = name->name,
  .len = name->len
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_RMDIR],
  .rpc_argp = &arg,
 };
 int status = -ENOMEM;

 dprintk("NFS call  rmdir %s\n", name->name);
 dir_attr = nfs_alloc_fattr();
 if (dir_attr == ((void*)0))
  goto out;

 msg.rpc_resp = dir_attr;
 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 nfs_post_op_update_inode(dir, dir_attr);
 nfs_free_fattr(dir_attr);
out:
 dprintk("NFS reply rmdir: %d\n", status);
 return status;
}
