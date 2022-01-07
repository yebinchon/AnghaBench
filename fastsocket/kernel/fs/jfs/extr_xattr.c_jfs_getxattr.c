
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; } ;
typedef int ssize_t ;


 int __jfs_getxattr (int ,char const*,void*,size_t) ;

ssize_t jfs_getxattr(struct dentry *dentry, const char *name, void *data,
       size_t buf_size)
{
 int err;

 err = __jfs_getxattr(dentry->d_inode, name, data, buf_size);

 return err;
}
