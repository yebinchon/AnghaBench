
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_message {TYPE_2__* rpc_resp; int * rpc_argp; int * rpc_proc; } ;
struct TYPE_4__ {int fattr; int fh; } ;
struct nfs_createdata {TYPE_2__ res; int arg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int ENOMEM ;
 size_t NFSPROC_MKDIR ;
 int NFS_CLIENT (struct inode*) ;
 int dprintk (char*,int) ;
 struct nfs_createdata* nfs_alloc_createdata (struct inode*,struct dentry*,struct iattr*) ;
 int nfs_free_createdata (struct nfs_createdata*) ;
 int nfs_instantiate (struct dentry*,int ,int ) ;
 int nfs_mark_for_revalidate (struct inode*) ;
 int * nfs_procedures ;
 int rpc_call_sync (int ,struct rpc_message*,int ) ;

__attribute__((used)) static int
nfs_proc_mkdir(struct inode *dir, struct dentry *dentry, struct iattr *sattr)
{
 struct nfs_createdata *data;
 struct rpc_message msg = {
  .rpc_proc = &nfs_procedures[NFSPROC_MKDIR],
 };
 int status = -ENOMEM;

 dprintk("NFS call  mkdir %s\n", dentry->d_name.name);
 data = nfs_alloc_createdata(dir, dentry, sattr);
 if (data == ((void*)0))
  goto out;
 msg.rpc_argp = &data->arg;
 msg.rpc_resp = &data->res;

 status = rpc_call_sync(NFS_CLIENT(dir), &msg, 0);
 nfs_mark_for_revalidate(dir);
 if (status == 0)
  status = nfs_instantiate(dentry, data->res.fh, data->res.fattr);
 nfs_free_createdata(data);
out:
 dprintk("NFS reply mkdir: %d\n", status);
 return status;
}
