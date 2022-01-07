
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs4_exception {scalar_t__ retry; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;


 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_symlink (struct inode*,struct dentry*,struct page*,unsigned int,struct iattr*) ;
 int nfs4_handle_exception (int ,int ,struct nfs4_exception*) ;

__attribute__((used)) static int nfs4_proc_symlink(struct inode *dir, struct dentry *dentry,
  struct page *page, unsigned int len, struct iattr *sattr)
{
 struct nfs4_exception exception = { };
 int err;
 do {
  err = nfs4_handle_exception(NFS_SERVER(dir),
    _nfs4_proc_symlink(dir, dentry, page,
       len, sattr),
    &exception);
 } while (exception.retry);
 return err;
}
