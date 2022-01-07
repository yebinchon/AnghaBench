
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;
typedef int ssize_t ;


 int ext4_xattr_list (int ,char*,size_t) ;

ssize_t
ext4_listxattr(struct dentry *dentry, char *buffer, size_t size)
{
 return ext4_xattr_list(dentry->d_inode, buffer, size);
}
