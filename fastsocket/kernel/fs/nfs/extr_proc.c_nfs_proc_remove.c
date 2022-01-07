
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_message {struct nfs_removeargs* rpc_argp; int * rpc_proc; } ;
struct qstr {int name; int len; } ;
struct TYPE_2__ {int name; int len; } ;
struct nfs_removeargs {TYPE_1__ name; int fh; } ;
struct inode {int dummy; } ;


 size_t NFSPROC_REMOVE ;
 int NFS_CLIENT (struct inode*) ;
 int NFS_FH (struct inode*) ;
 int dprintk (char*,int) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_remove(struct inode *dir, struct qstr *name)
{
 struct nfs_removeargs arg = {
  .fh = NFS_FH(dir),
  .name.len = name->len,
  .name.name = name->name,
 };
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_REMOVE],
  .rpc_argp = &arg,
 };
 int status;

 dprintk("NFS call  remove %s\n", name->name);
 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 nfs_mark_for_revalidate(dir);

 dprintk("NFS reply remove: %d\n", status);
 return status;
}
