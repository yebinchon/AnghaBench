
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_exception {scalar_t__ retry; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_mknod (struct inode*,struct dentry*,struct iattr*,int ) ;
 int nfs4_handle_exception (int ,int ,struct nfs4_exception*) ;

__attribute__((used)) static int nfs4_proc_mknod(struct inode *dir, struct dentry *dentry,
  struct iattr *sattr, dev_t rdev)
{
 struct nfs4_exception exception = { };
 int err;
 do {
  err = nfs4_handle_exception(NFS_SERVER(dir),
    _nfs4_proc_mknod(dir, dentry, sattr, rdev),
    &exception);
 } while (exception.retry);
 return err;
}
