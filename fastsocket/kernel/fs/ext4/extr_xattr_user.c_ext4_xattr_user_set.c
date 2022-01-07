
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EXT4_XATTR_INDEX_USER ;
 int XATTR_USER ;
 int ext4_xattr_set (struct inode*,int ,char const*,void const*,size_t,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static int
ext4_xattr_user_set(struct inode *inode, const char *name,
      const void *value, size_t size, int flags)
{
 if (strcmp(name, "") == 0)
  return -EINVAL;
 if (!test_opt(inode->i_sb, XATTR_USER))
  return -EOPNOTSUPP;
 return ext4_xattr_set(inode, EXT4_XATTR_INDEX_USER, name,
         value, size, flags);
}
