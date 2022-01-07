
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct nfs4_secinfo_flavors {int dummy; } ;
struct nfs4_exception {scalar_t__ retry; } ;
struct inode {int dummy; } ;


 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_secinfo (struct inode*,struct qstr const*,struct nfs4_secinfo_flavors*) ;
 int nfs4_handle_exception (int ,int ,struct nfs4_exception*) ;

int nfs4_proc_secinfo(struct inode *dir, const struct qstr *name,
        struct nfs4_secinfo_flavors *flavors)
{
 struct nfs4_exception exception = { };
 int err;
 do {
  err = nfs4_handle_exception(NFS_SERVER(dir),
    _nfs4_proc_secinfo(dir, name, flavors),
    &exception);
 } while (exception.retry);
 return err;
}
