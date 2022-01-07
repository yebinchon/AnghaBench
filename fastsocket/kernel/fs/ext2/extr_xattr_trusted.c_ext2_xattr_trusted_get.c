
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EINVAL ;
 int EXT2_XATTR_INDEX_TRUSTED ;
 int ext2_xattr_get (struct inode*,int ,char const*,void*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ext2_xattr_trusted_get(struct inode *inode, const char *name,
         void *buffer, size_t size)
{
 if (strcmp(name, "") == 0)
  return -EINVAL;
 return ext2_xattr_get(inode, EXT2_XATTR_INDEX_TRUSTED, name,
         buffer, size);
}
