
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {int dummy; } ;
struct nfs_server {TYPE_1__* nfs_client; } ;
struct nfs4_state {int dummy; } ;
struct nfs4_exception {int retry; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int cl_hostname; } ;


 int EAGAIN ;
 struct nfs4_state* ERR_PTR (int ) ;
 int FMODE_EXEC ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int NFS4ERR_BAD_SEQID ;
 int NFS4ERR_BAD_STATEID ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int _nfs4_do_open (struct inode*,struct dentry*,int,int,struct iattr*,struct rpc_cred*,struct nfs4_state**) ;
 scalar_t__ nfs4_clear_cap_atomic_open_v1 (struct nfs_server*,int,struct nfs4_exception*) ;
 int nfs4_handle_exception (struct nfs_server*,int,struct nfs4_exception*) ;
 int pr_warn_ratelimited (char*,int ) ;

__attribute__((used)) static struct nfs4_state *nfs4_do_open(struct inode *dir, struct dentry *dentry, fmode_t fmode, int flags, struct iattr *sattr, struct rpc_cred *cred)
{
 struct nfs_server *server = NFS_SERVER(dir);
 struct nfs4_exception exception = { };
 struct nfs4_state *res;
 int status;

 fmode &= FMODE_READ|FMODE_WRITE|FMODE_EXEC;
 do {
  status = _nfs4_do_open(dir, dentry, fmode, flags, sattr, cred, &res);
  if (status == 0)
   break;
  if (status == -NFS4ERR_BAD_SEQID) {
   pr_warn_ratelimited("NFS: v4 server %s "
     " returned a bad sequence-id error!\n",
     NFS_SERVER(dir)->nfs_client->cl_hostname);
   exception.retry = 1;
   continue;
  }






  if (status == -NFS4ERR_BAD_STATEID) {
   exception.retry = 1;
   continue;
  }
  if (status == -EAGAIN) {

   exception.retry = 1;
   continue;
  }
  if (nfs4_clear_cap_atomic_open_v1(server, status, &exception))
   continue;
  res = ERR_PTR(nfs4_handle_exception(server,
     status, &exception));
 } while (exception.retry);
 return res;
}
