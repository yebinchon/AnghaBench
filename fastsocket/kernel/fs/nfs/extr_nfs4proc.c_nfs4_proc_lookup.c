
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct qstr {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;


 struct rpc_clnt* NFS_CLIENT (struct inode*) ;
 int nfs4_proc_lookup_common (struct rpc_clnt**,struct inode*,struct qstr*,struct nfs_fh*,struct nfs_fattr*) ;
 int nfs_fixup_secinfo_attributes (struct nfs_fattr*) ;
 int rpc_shutdown_client (struct rpc_clnt*) ;

__attribute__((used)) static int nfs4_proc_lookup(struct rpc_clnt *clnt, struct inode *dir, struct qstr *name,
       struct nfs_fh *fhandle, struct nfs_fattr *fattr)
{
 int status;
 struct rpc_clnt *client = NFS_CLIENT(dir);

 status = nfs4_proc_lookup_common(&client, dir, name, fhandle, fattr);
 if (client != NFS_CLIENT(dir)) {
  rpc_shutdown_client(client);
  nfs_fixup_secinfo_attributes(fattr);
 }
 return status;
}
