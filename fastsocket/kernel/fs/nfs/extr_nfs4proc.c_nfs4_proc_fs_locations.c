
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct qstr {int dummy; } ;
struct page {int dummy; } ;
struct nfs4_fs_locations {int dummy; } ;
struct nfs4_exception {scalar_t__ retry; } ;
struct inode {int dummy; } ;


 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_fs_locations (struct rpc_clnt*,struct inode*,struct qstr const*,struct nfs4_fs_locations*,struct page*) ;
 int nfs4_handle_exception (int ,int ,struct nfs4_exception*) ;

int nfs4_proc_fs_locations(struct rpc_clnt *client, struct inode *dir,
      const struct qstr *name,
      struct nfs4_fs_locations *fs_locations,
      struct page *page)
{
 struct nfs4_exception exception = { };
 int err;
 do {
  err = nfs4_handle_exception(NFS_SERVER(dir),
    _nfs4_proc_fs_locations(client, dir, name, fs_locations, page),
    &exception);
 } while (exception.retry);
 return err;
}
