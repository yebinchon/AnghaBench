
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef int ssize_t ;


 int ecryptfs_dentry_to_lower (struct dentry*) ;
 int ecryptfs_getxattr_lower (int ,char const*,void*,size_t) ;

__attribute__((used)) static ssize_t
ecryptfs_getxattr(struct dentry *dentry, const char *name, void *value,
    size_t size)
{
 return ecryptfs_getxattr_lower(ecryptfs_dentry_to_lower(dentry), name,
           value, size);
}
