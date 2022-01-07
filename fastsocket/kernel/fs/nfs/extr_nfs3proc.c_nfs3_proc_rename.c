
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_renameres* rpc_resp; struct nfs_renameargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; } ;
struct nfs_renameres {int * new_fattr; int * old_fattr; } ;
struct nfs_renameargs {struct qstr* new_name; int new_dir; struct qstr* old_name; int old_dir; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 size_t NFS3PROC_RENAME ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int,...) ;
 int * nfs3_procedures ;
 void* nfs_alloc_fattr () ;
 int nfs_free_fattr (int *) ;
 int nfs_post_op_update_inode (struct inode*,int *) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs3_proc_rename(struct inode *old_dir, struct qstr *old_name,
   struct inode *new_dir, struct qstr *new_name)
{
 struct nfs_renameargs arg = {
  .old_dir = NFS_FH(old_dir),
  .old_name = old_name,
  .new_dir = NFS_FH(new_dir),
  .new_name = new_name,
 };
 struct nfs_renameres res;
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_RENAME],
  .rpc_argp = &arg,
  .rpc_resp = &res,
 };
 int status = -ENOMEM;

 dprintk("NFS call  rename %s -> %s\n", old_name->name, new_name->name);

 res.old_fattr = nfs_alloc_fattr();
 res.new_fattr = nfs_alloc_fattr();
 if (res.old_fattr == ((void*)0) || res.new_fattr == ((void*)0))
  goto out;

 status = rpc_call_sync(NFS_CLIENT(old_dir), &msg, 0);
 nfs_post_op_update_inode(old_dir, res.old_fattr);
 nfs_post_op_update_inode(new_dir, res.new_fattr);
out:
 nfs_free_fattr(res.old_fattr);
 nfs_free_fattr(res.new_fattr);
 dprintk("NFS reply rename: %d\n", status);
 return status;
}
