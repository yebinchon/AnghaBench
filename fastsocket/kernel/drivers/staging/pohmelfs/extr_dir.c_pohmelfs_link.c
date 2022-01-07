
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {int len; int name; int hash; } ;
struct pohmelfs_inode {int ino; } ;
struct inode {int i_mode; TYPE_2__* i_sb; } ;
struct dentry {struct qstr d_name; struct inode* d_inode; } ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* write_inode ) (struct inode*,int ) ;} ;


 struct pohmelfs_inode* POHMELFS_I (struct inode*) ;
 int jhash (int ,int ,int ) ;
 int pohmelfs_create_entry (struct inode*,struct dentry*,int ,int ) ;
 int pohmelfs_create_link (struct pohmelfs_inode*,struct qstr*,struct pohmelfs_inode*,int *) ;
 int stub1 (struct inode*,int ) ;

__attribute__((used)) static int pohmelfs_link(struct dentry *old_dentry, struct inode *dir,
 struct dentry *dentry)
{
 struct inode *inode = old_dentry->d_inode;
 struct pohmelfs_inode *pi = POHMELFS_I(inode);
 int err;
 struct qstr str = dentry->d_name;

 str.hash = jhash(dentry->d_name.name, dentry->d_name.len, 0);

 err = inode->i_sb->s_op->write_inode(inode, 0);
 if (err)
  return err;

 err = pohmelfs_create_link(POHMELFS_I(dir), &str, pi, ((void*)0));
 if (err)
  return err;

 return pohmelfs_create_entry(dir, dentry, pi->ino, inode->i_mode);
}
