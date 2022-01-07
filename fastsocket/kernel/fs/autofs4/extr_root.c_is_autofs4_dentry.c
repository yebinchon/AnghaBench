
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int * d_fsdata; int * d_op; scalar_t__ d_inode; } ;


 int autofs4_dentry_operations ;

int is_autofs4_dentry(struct dentry *dentry)
{
 return dentry && dentry->d_inode &&
  dentry->d_op == &autofs4_dentry_operations &&
  dentry->d_fsdata != ((void*)0);
}
