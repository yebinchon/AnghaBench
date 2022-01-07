
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_filelist {int name; } ;
struct qstr {int len; int name; int hash; } ;
struct inode {int i_mode; } ;
struct dentry {struct inode* d_inode; } ;


 int BUG () ;

 int S_IFMT ;

 int __rpc_rmdir (struct inode*,struct dentry*) ;
 int __rpc_unlink (struct inode*,struct dentry*) ;
 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 int dput (struct dentry*) ;
 int full_name_hash (int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void __rpc_depopulate(struct dentry *parent,
        const struct rpc_filelist *files,
        int start, int eof)
{
 struct inode *dir = parent->d_inode;
 struct dentry *dentry;
 struct qstr name;
 int i;

 for (i = start; i < eof; i++) {
  name.name = files[i].name;
  name.len = strlen(files[i].name);
  name.hash = full_name_hash(name.name, name.len);
  dentry = d_lookup(parent, &name);

  if (dentry == ((void*)0))
   continue;
  if (dentry->d_inode == ((void*)0))
   goto next;
  switch (dentry->d_inode->i_mode & S_IFMT) {
   default:
    BUG();
   case 128:
    __rpc_unlink(dir, dentry);
    break;
   case 129:
    __rpc_rmdir(dir, dentry);
  }
next:
  dput(dentry);
 }
}
