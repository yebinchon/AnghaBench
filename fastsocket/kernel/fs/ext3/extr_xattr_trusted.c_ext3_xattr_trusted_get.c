
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EINVAL ;
 int EXT3_XATTR_INDEX_TRUSTED ;
 int ext3_xattr_get (struct inode*,int ,char const*,void*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
ext3_xattr_trusted_get(struct inode *inode, const char *name,
         void *buffer, size_t size)
{
 if (strcmp(name, "") == 0)
  return -EINVAL;
 return ext3_xattr_get(inode, EXT3_XATTR_INDEX_TRUSTED, name,
         buffer, size);
}
