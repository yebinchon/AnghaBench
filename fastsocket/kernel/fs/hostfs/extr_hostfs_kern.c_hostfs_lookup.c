
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int * d_op; } ;


 int ENOENT ;
 int ENOMEM ;
 struct dentry* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 char* dentry_name (struct dentry*,int ) ;
 int hostfs_dentry_ops ;
 struct inode* hostfs_iget (int ) ;
 int init_inode (struct inode*,struct dentry*) ;
 int iput (struct inode*) ;
 int kfree (char*) ;
 int read_name (struct inode*,char*) ;

struct dentry *hostfs_lookup(struct inode *ino, struct dentry *dentry,
        struct nameidata *nd)
{
 struct inode *inode;
 char *name;
 int err;

 inode = hostfs_iget(ino->i_sb);
 if (IS_ERR(inode)) {
  err = PTR_ERR(inode);
  goto out;
 }

 err = init_inode(inode, dentry);
 if (err)
  goto out_put;

 err = -ENOMEM;
 name = dentry_name(dentry, 0);
 if (name == ((void*)0))
  goto out_put;

 err = read_name(inode, name);
 kfree(name);
 if (err == -ENOENT) {
  iput(inode);
  inode = ((void*)0);
 }
 else if (err)
  goto out_put;

 d_add(dentry, inode);
 dentry->d_op = &hostfs_dentry_ops;
 return ((void*)0);

 out_put:
 iput(inode);
 out:
 return ERR_PTR(err);
}
