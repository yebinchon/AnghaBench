
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs4_exception {scalar_t__ retry; } ;


 int _nfs4_proc_getattr (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ;
 int nfs4_handle_exception (struct nfs_server*,int ,struct nfs4_exception*) ;

__attribute__((used)) static int nfs4_proc_getattr(struct nfs_server *server, struct nfs_fh *fhandle, struct nfs_fattr *fattr)
{
 struct nfs4_exception exception = { };
 int err;
 do {
  err = nfs4_handle_exception(server,
    _nfs4_proc_getattr(server, fhandle, fattr),
    &exception);
 } while (exception.retry);
 return err;
}
