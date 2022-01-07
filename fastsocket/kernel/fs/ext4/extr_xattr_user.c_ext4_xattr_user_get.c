
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EXT4_XATTR_INDEX_USER ;
 int XATTR_USER ;
 int ext4_xattr_get (struct inode*,int ,char const*,void*,size_t) ;
 scalar_t__ strcmp (char const*,char*) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static int
ext4_xattr_user_get(struct inode *inode, const char *name,
      void *buffer, size_t size)
{
 if (strcmp(name, "") == 0)
  return -EINVAL;
 if (!test_opt(inode->i_sb, XATTR_USER))
  return -EOPNOTSUPP;
 return ext4_xattr_get(inode, EXT4_XATTR_INDEX_USER, name, buffer, size);
}
