
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {char* name; int len; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_sb; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct dentry* d_obtain_alias (int ) ;
 int ext2_iget (int ,unsigned long) ;
 unsigned long ext2_inode_by_name (TYPE_1__*,struct qstr*) ;

struct dentry *ext2_get_parent(struct dentry *child)
{
 struct qstr dotdot = {.name = "..", .len = 2};
 unsigned long ino = ext2_inode_by_name(child->d_inode, &dotdot);
 if (!ino)
  return ERR_PTR(-ENOENT);
 return d_obtain_alias(ext2_iget(child->d_inode->i_sb, ino));
}
