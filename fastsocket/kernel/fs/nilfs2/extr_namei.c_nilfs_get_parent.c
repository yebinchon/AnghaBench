
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {char* name; int len; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct TYPE_4__ {int i_sb; } ;


 int ENOENT ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct dentry* d_obtain_alias (struct inode*) ;
 struct inode* nilfs_iget (int ,unsigned long) ;
 unsigned long nilfs_inode_by_name (TYPE_2__*,struct dentry*) ;

struct dentry *nilfs_get_parent(struct dentry *child)
{
 unsigned long ino;
 struct inode *inode;
 struct dentry dotdot;

 dotdot.d_name.name = "..";
 dotdot.d_name.len = 2;

 ino = nilfs_inode_by_name(child->d_inode, &dotdot);
 if (!ino)
  return ERR_PTR(-ENOENT);

 inode = nilfs_iget(child->d_inode->i_sb, ino);
 if (IS_ERR(inode))
  return ERR_CAST(inode);
 return d_obtain_alias(inode);
}
