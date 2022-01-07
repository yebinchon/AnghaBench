
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct dentry {scalar_t__ d_inode; } ;
typedef int dev_t ;


 int EEXIST ;
 int EPERM ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dget (struct dentry*) ;
 struct inode* get_inode (int ,int,int ) ;

__attribute__((used)) static int mknod(struct inode *dir, struct dentry *dentry,
    int mode, dev_t dev)
{
 struct inode *inode;
 int error = -EPERM;

 if (dentry->d_inode)
  return -EEXIST;

 inode = get_inode(dir->i_sb, mode, dev);
 if (inode) {
  d_instantiate(dentry, inode);
  dget(dentry);
  error = 0;
 }
 return error;
}
