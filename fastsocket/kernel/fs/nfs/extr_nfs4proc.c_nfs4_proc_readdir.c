
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rpc_cred {int dummy; } ;
struct page {int dummy; } ;
struct nfs4_exception {scalar_t__ retry; } ;
struct dentry {int d_inode; } ;


 int NFS_SERVER (int ) ;
 int _nfs4_proc_readdir (struct dentry*,struct rpc_cred*,int ,struct page**,unsigned int,int) ;
 int nfs4_handle_exception (int ,int ,struct nfs4_exception*) ;

__attribute__((used)) static int nfs4_proc_readdir(struct dentry *dentry, struct rpc_cred *cred,
  u64 cookie, struct page **pages, unsigned int count, int plus)
{
 struct nfs4_exception exception = { };
 int err;
 do {
  err = nfs4_handle_exception(NFS_SERVER(dentry->d_inode),
    _nfs4_proc_readdir(dentry, cred, cookie,
     pages, count, plus),
    &exception);
 } while (exception.retry);
 return err;
}
