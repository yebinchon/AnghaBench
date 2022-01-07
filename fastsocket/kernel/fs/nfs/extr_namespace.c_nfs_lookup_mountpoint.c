
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_clnt {int dummy; } ;
struct qstr {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int (* lookup ) (int ,struct inode*,struct qstr*,struct nfs_fh*,struct nfs_fattr*) ;} ;
struct TYPE_3__ {int client; } ;


 struct rpc_clnt* ERR_PTR (int) ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 TYPE_1__* NFS_SERVER (struct inode*) ;
 struct rpc_clnt* rpc_clone_client (int ) ;
 int stub1 (int ,struct inode*,struct qstr*,struct nfs_fh*,struct nfs_fattr*) ;

__attribute__((used)) static inline struct rpc_clnt *nfs_lookup_mountpoint(struct inode *dir,
           struct qstr *name,
           struct nfs_fh *fh,
           struct nfs_fattr *fattr)
{
 int err = NFS_PROTO(dir)->lookup(NFS_SERVER(dir)->client, dir, name, fh, fattr);
 if (err)
  return ERR_PTR(err);
 return rpc_clone_client(NFS_SERVER(dir)->client);
}
