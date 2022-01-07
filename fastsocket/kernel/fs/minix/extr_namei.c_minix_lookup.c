
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {TYPE_4__* i_sb; } ;
struct TYPE_7__ {scalar_t__ len; } ;
struct dentry {TYPE_2__ d_name; int d_op; } ;
typedef scalar_t__ ino_t ;
struct TYPE_9__ {TYPE_1__* s_root; } ;
struct TYPE_8__ {scalar_t__ s_namelen; } ;
struct TYPE_6__ {int d_op; } ;


 int ENAMETOOLONG ;
 struct dentry* ERR_CAST (struct inode*) ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int d_add (struct dentry*,struct inode*) ;
 struct inode* minix_iget (TYPE_4__*,scalar_t__) ;
 scalar_t__ minix_inode_by_name (struct dentry*) ;
 TYPE_3__* minix_sb (TYPE_4__*) ;

__attribute__((used)) static struct dentry *minix_lookup(struct inode * dir, struct dentry *dentry, struct nameidata *nd)
{
 struct inode * inode = ((void*)0);
 ino_t ino;

 dentry->d_op = dir->i_sb->s_root->d_op;

 if (dentry->d_name.len > minix_sb(dir->i_sb)->s_namelen)
  return ERR_PTR(-ENAMETOOLONG);

 ino = minix_inode_by_name(dentry);
 if (ino) {
  inode = minix_iget(dir->i_sb, ino);
  if (IS_ERR(inode))
   return ERR_CAST(inode);
 }
 d_add(dentry, inode);
 return ((void*)0);
}
