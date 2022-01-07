
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_auth {int dummy; } ;
struct nfs_server {int client; } ;
struct nfs_fsinfo {int dummy; } ;
struct nfs_fh {int dummy; } ;
typedef int rpc_authflavor_t ;


 int EIO ;
 int nfs4_lookup_root (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ;
 struct rpc_auth* rpcauth_create (int ,int ) ;

__attribute__((used)) static int nfs4_lookup_root_sec(struct nfs_server *server, struct nfs_fh *fhandle,
    struct nfs_fsinfo *info, rpc_authflavor_t flavor)
{
 struct rpc_auth *auth;
 int ret;

 auth = rpcauth_create(flavor, server->client);
 if (!auth) {
  ret = -EIO;
  goto out;
 }
 ret = nfs4_lookup_root(server, fhandle, info);
out:
 return ret;
}
