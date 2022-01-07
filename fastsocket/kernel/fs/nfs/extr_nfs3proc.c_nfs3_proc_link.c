
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs3_linkres* rpc_resp; struct nfs3_linkargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; int len; } ;
struct nfs3_linkres {int * fattr; int * dir_attr; } ;
struct nfs3_linkargs {int toname; int tolen; int tofh; int fromfh; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 size_t NFS3PROC_LINK ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int) ;
 int * nfs3_procedures ;
 void* nfs_alloc_fattr () ;
 int nfs_free_fattr (int *) ;
 int nfs_post_op_update_inode (struct inode*,int *) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs3_proc_link(struct inode *inode, struct inode *dir, struct qstr *name)
{
 struct nfs3_linkargs arg = {
  .fromfh = NFS_FH(inode),
  .tofh = NFS_FH(dir),
  .toname = name->name,
  .tolen = name->len
 };
 struct nfs3_linkres res;
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_LINK],
  .rpc_argp = &arg,
  .rpc_resp = &res,
 };
 int status = -ENOMEM;

 dprintk("NFS call  link %s\n", name->name);
 res.fattr = nfs_alloc_fattr();
 res.dir_attr = nfs_alloc_fattr();
 if (res.fattr == ((void*)0) || res.dir_attr == ((void*)0))
  goto out;

 status = rpc_call_sync(NFS_CLIENT(inode), &msg, 0);
 nfs_post_op_update_inode(dir, res.dir_attr);
 nfs_post_op_update_inode(inode, res.fattr);
out:
 nfs_free_fattr(res.dir_attr);
 nfs_free_fattr(res.fattr);
 dprintk("NFS reply link: %d\n", status);
 return status;
}
