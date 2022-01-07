
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct nfs4_exception {scalar_t__ retry; } ;
struct inode {int dummy; } ;


 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_rename (struct inode*,struct qstr*,struct inode*,struct qstr*) ;
 int nfs4_handle_exception (int ,int ,struct nfs4_exception*) ;

__attribute__((used)) static int nfs4_proc_rename(struct inode *old_dir, struct qstr *old_name,
  struct inode *new_dir, struct qstr *new_name)
{
 struct nfs4_exception exception = { };
 int err;
 do {
  err = nfs4_handle_exception(NFS_SERVER(old_dir),
    _nfs4_proc_rename(old_dir, old_name,
     new_dir, new_name),
    &exception);
 } while (exception.retry);
 return err;
}
