
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
typedef scalar_t__ efs_ino_t ;
struct TYPE_2__ {int i_sb; } ;


 int ENOENT ;
 struct dentry* ERR_PTR (int ) ;
 struct dentry* d_obtain_alias (int ) ;
 scalar_t__ efs_find_entry (TYPE_1__*,char*,int) ;
 int efs_iget (int ,scalar_t__) ;

struct dentry *efs_get_parent(struct dentry *child)
{
 struct dentry *parent = ERR_PTR(-ENOENT);
 efs_ino_t ino;

 ino = efs_find_entry(child->d_inode, "..", 2);
 if (ino)
  parent = d_obtain_alias(efs_iget(child->d_inode->i_sb, ino));

 return parent;
}
