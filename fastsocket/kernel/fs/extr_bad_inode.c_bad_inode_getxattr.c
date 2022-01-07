
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
typedef int ssize_t ;


 int EIO ;

__attribute__((used)) static ssize_t bad_inode_getxattr(struct dentry *dentry, const char *name,
   void *buffer, size_t size)
{
 return -EIO;
}
