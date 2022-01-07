
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static int cap_inode_rename(struct inode *old_inode, struct dentry *old_dentry,
       struct inode *new_inode, struct dentry *new_dentry)
{
 return 0;
}
