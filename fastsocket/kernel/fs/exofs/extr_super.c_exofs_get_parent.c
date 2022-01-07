
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_sb; } ;


 struct dentry* d_obtain_alias (int ) ;
 int exofs_iget (int ,unsigned long) ;
 unsigned long exofs_parent_ino (struct dentry*) ;

struct dentry *exofs_get_parent(struct dentry *child)
{
 unsigned long ino = exofs_parent_ino(child);

 if (!ino)
  return ((void*)0);

 return d_obtain_alias(exofs_iget(child->d_inode->i_sb, ino));
}
