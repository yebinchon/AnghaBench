
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int * d_inode; } ;


 int EEXIST ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dentry*) ;
 struct dentry* __rpc_lookup_create (struct dentry*,struct qstr*) ;
 int dput (struct dentry*) ;

__attribute__((used)) static struct dentry *__rpc_lookup_create_exclusive(struct dentry *parent,
       struct qstr *name)
{
 struct dentry *dentry;

 dentry = __rpc_lookup_create(parent, name);
 if (IS_ERR(dentry))
  return dentry;
 if (dentry->d_inode == ((void*)0))
  return dentry;
 dput(dentry);
 return ERR_PTR(-EEXIST);
}
