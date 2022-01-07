
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {struct nfs_removeres* rpc_resp; struct nfs_removeargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; int len; } ;
struct nfs_removeres {int * dir_attr; } ;
struct TYPE_2__ {int name; int len; } ;
struct nfs_removeargs {TYPE_1__ name; int fh; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 size_t NFS3PROC_REMOVE ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int) ;
 int * nfs3_procedures ;
 int * nfs_alloc_fattr () ;
 int nfs_free_fattr (int *) ;
 int nfs_post_op_update_inode (struct inode*,int *) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs3_proc_remove(struct inode *dir, struct qstr *name)
{
 struct nfs_removeargs arg = {
  .fh = NFS_FH(dir),
  .name.len = name->len,
  .name.name = name->name,
 };
 struct nfs_removeres res;
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_REMOVE],
  .rpc_argp = &arg,
  .rpc_resp = &res,
 };
 int status = -ENOMEM;

 dprintk("NFS call  remove %s\n", name->name);
 res.dir_attr = nfs_alloc_fattr();
 if (res.dir_attr == ((void*)0))
  goto out;

 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 nfs_post_op_update_inode(dir, res.dir_attr);
 nfs_free_fattr(res.dir_attr);
out:
 dprintk("NFS reply remove: %d\n", status);
 return status;
}
