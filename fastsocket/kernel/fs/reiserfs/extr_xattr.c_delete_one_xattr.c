
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__* d_parent; } ;
struct TYPE_4__ {int i_mode; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int xattr_rmdir (struct inode*,struct dentry*) ;
 int xattr_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int delete_one_xattr(struct dentry *dentry, void *data)
{
 struct inode *dir = dentry->d_parent->d_inode;


 if (S_ISDIR(dentry->d_inode->i_mode))
  return xattr_rmdir(dir, dentry);

 return xattr_unlink(dir, dentry);
}
