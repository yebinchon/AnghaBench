
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {int rpc_cred; struct nfs3_accessres* rpc_resp; struct nfs3_accessargs* rpc_argp; int * rpc_proc; } ;
struct nfs_access_entry {int mask; int cred; } ;
struct nfs3_accessres {int access; int * fattr; } ;
struct nfs3_accessargs {int access; int fh; } ;
struct inode {int i_mode; } ;


 int ENOMEM ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 size_t NFS3PROC_ACCESS ;
 int NFS3_ACCESS_DELETE ;
 int NFS3_ACCESS_EXECUTE ;
 int NFS3_ACCESS_EXTEND ;
 int NFS3_ACCESS_LOOKUP ;
 int NFS3_ACCESS_MODIFY ;
 int NFS3_ACCESS_READ ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 int dprintk (char*,...) ;
 int * nfs3_procedures ;
 int * nfs_alloc_fattr () ;
 int nfs_free_fattr (int *) ;
 int nfs_refresh_inode (struct inode*,int *) ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int nfs3_proc_access(struct inode *inode, struct nfs_access_entry *entry)
{
 struct nfs3_accessargs arg = {
  .fh = NFS_FH(inode),
 };
 struct nfs3_accessres res;
 struct rpc_message msg = {
  .rpc_proc = &nfs3_procedures[NFS3PROC_ACCESS],
  .rpc_argp = &arg,
  .rpc_resp = &res,
  .rpc_cred = entry->cred,
 };
 int mode = entry->mask;
 int status = -ENOMEM;

 dprintk("NFS call  access\n");

 if (mode & MAY_READ)
  arg.access |= NFS3_ACCESS_READ;
 if (S_ISDIR(inode->i_mode)) {
  if (mode & MAY_WRITE)
   arg.access |= NFS3_ACCESS_MODIFY | NFS3_ACCESS_EXTEND | NFS3_ACCESS_DELETE;
  if (mode & MAY_EXEC)
   arg.access |= NFS3_ACCESS_LOOKUP;
 } else {
  if (mode & MAY_WRITE)
   arg.access |= NFS3_ACCESS_MODIFY | NFS3_ACCESS_EXTEND;
  if (mode & MAY_EXEC)
   arg.access |= NFS3_ACCESS_EXECUTE;
 }

 res.fattr = nfs_alloc_fattr();
 if (res.fattr == ((void*)0))
  goto out;

 status = rpc_call_sync(NFS_CLIENT(inode), &msg, 0);
 nfs_refresh_inode(inode, res.fattr);
 if (status == 0) {
  entry->mask = 0;
  if (res.access & NFS3_ACCESS_READ)
   entry->mask |= MAY_READ;
  if (res.access & (NFS3_ACCESS_MODIFY | NFS3_ACCESS_EXTEND | NFS3_ACCESS_DELETE))
   entry->mask |= MAY_WRITE;
  if (res.access & (NFS3_ACCESS_LOOKUP|NFS3_ACCESS_EXECUTE))
   entry->mask |= MAY_EXEC;
 }
 nfs_free_fattr(res.fattr);
out:
 dprintk("NFS reply access: %d\n", status);
 return status;
}
