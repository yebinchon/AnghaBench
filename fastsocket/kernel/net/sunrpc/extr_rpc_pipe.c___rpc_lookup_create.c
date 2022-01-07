
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int * d_op; int d_inode; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int ) ;
 struct dentry* d_alloc (struct dentry*,struct qstr*) ;
 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 int rpc_dentry_operations ;

__attribute__((used)) static struct dentry *__rpc_lookup_create(struct dentry *parent,
       struct qstr *name)
{
 struct dentry *dentry;

 dentry = d_lookup(parent, name);
 if (!dentry) {
  dentry = d_alloc(parent, name);
  if (!dentry) {
   dentry = ERR_PTR(-ENOMEM);
   goto out_err;
  }
 }
 if (!dentry->d_inode)
  dentry->d_op = &rpc_dentry_operations;
out_err:
 return dentry;
}
