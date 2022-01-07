
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int vfs_sb; } ;
struct inode {int dummy; } ;
typedef int ino_t ;
struct TYPE_2__ {scalar_t__ xattr; } ;


 int EINVAL ;
 struct inode* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ PTR_ERR (struct inode*) ;
 int iput (struct inode*) ;
 int ubifs_err (char*,...) ;
 struct inode* ubifs_iget (int ,int ) ;
 TYPE_1__* ubifs_inode (struct inode*) ;

__attribute__((used)) static struct inode *iget_xattr(struct ubifs_info *c, ino_t inum)
{
 struct inode *inode;

 inode = ubifs_iget(c->vfs_sb, inum);
 if (IS_ERR(inode)) {
  ubifs_err("dead extended attribute entry, error %d",
     (int)PTR_ERR(inode));
  return inode;
 }
 if (ubifs_inode(inode)->xattr)
  return inode;
 ubifs_err("corrupt extended attribute entry");
 iput(inode);
 return ERR_PTR(-EINVAL);
}
