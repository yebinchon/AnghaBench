
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_message {struct nfs_renameargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; } ;
struct nfs_renameargs {struct qstr* new_name; int new_dir; struct qstr* old_name; int old_dir; } ;
struct inode {int dummy; } ;


 size_t NFSPROC_RENAME ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int,...) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_rename(struct inode *old_dir, struct qstr *old_name,
  struct inode *new_dir, struct qstr *new_name)
{
 struct nfs_renameargs arg = {
  .old_dir = NFS_FH(old_dir),
  .old_name = old_name,
  .new_dir = NFS_FH(new_dir),
  .new_name = new_name,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_RENAME],
  .rpc_argp = &arg,
 };
 int status;

 dprintk("NFS call  rename %s -> %s\n", old_name->name, new_name->name);
 status = rpc_call_sync(NFS_CLIENT(old_dir), &msg, 0);
 nfs_mark_for_revalidate(old_dir);
 nfs_mark_for_revalidate(new_dir);
 dprintk("NFS reply rename: %d\n", status);
 return status;
}
