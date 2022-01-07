
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct inode*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int PTR_ERR (struct inode*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 char* dentry_name (struct dentry*,int ) ;
 int do_mknod (char*,int,int ,int ) ;
 struct inode* hostfs_iget (int ) ;
 int init_inode (struct inode*,struct dentry*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int iput (struct inode*) ;
 int kfree (char*) ;
 int read_name (struct inode*,char*) ;

int hostfs_mknod(struct inode *dir, struct dentry *dentry, int mode, dev_t dev)
{
 struct inode *inode;
 char *name;
 int err;

 inode = hostfs_iget(dir->i_sb);
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

 init_special_inode(inode, mode, dev);
 err = do_mknod(name, mode, MAJOR(dev), MINOR(dev));
 if (err)
  goto out_free;

 err = read_name(inode, name);
 kfree(name);
 if (err)
  goto out_put;

 d_instantiate(dentry, inode);
 return 0;

 out_free:
 kfree(name);
 out_put:
 iput(inode);
 out:
 return err;
}
