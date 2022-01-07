
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {char* name; int len; } ;
struct inode {int i_sb; } ;
struct dentry {struct dentry* d_parent; int d_sb; } ;


 struct dentry* d_alloc (int *,struct qstr const*) ;
 int d_instantiate (struct dentry*,struct inode*) ;

struct dentry * d_alloc_root(struct inode * root_inode)
{
 struct dentry *res = ((void*)0);

 if (root_inode) {
  static const struct qstr name = { .name = "/", .len = 1 };

  res = d_alloc(((void*)0), &name);
  if (res) {
   res->d_sb = root_inode->i_sb;
   res->d_parent = res;
   d_instantiate(res, root_inode);
  }
 }
 return res;
}
