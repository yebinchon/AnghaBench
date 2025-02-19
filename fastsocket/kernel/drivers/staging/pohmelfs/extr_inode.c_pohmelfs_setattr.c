
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_inode {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 struct pohmelfs_inode* POHMELFS_I (struct inode*) ;
 int POHMELFS_WRITE_LOCK ;
 int pohmelfs_data_lock (struct pohmelfs_inode*,int ,int ,int ) ;
 int pohmelfs_setattr_raw (struct inode*,struct iattr*) ;
 int security_inode_setattr (struct dentry*,struct iattr*) ;

int pohmelfs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 struct pohmelfs_inode *pi = POHMELFS_I(inode);
 int err;

 err = pohmelfs_data_lock(pi, 0, ~0, POHMELFS_WRITE_LOCK);
 if (err)
  goto err_out_exit;

 err = security_inode_setattr(dentry, attr);
 if (err)
  goto err_out_exit;

 err = pohmelfs_setattr_raw(inode, attr);
 if (err)
  goto err_out_exit;

 return 0;

err_out_exit:
 return err;
}
