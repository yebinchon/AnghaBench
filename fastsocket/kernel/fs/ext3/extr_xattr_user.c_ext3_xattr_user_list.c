
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int XATTR_USER ;
 char const* XATTR_USER_PREFIX ;
 size_t XATTR_USER_PREFIX_LEN ;
 int memcpy (char*,char const*,size_t const) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static size_t
ext3_xattr_user_list(struct inode *inode, char *list, size_t list_size,
       const char *name, size_t name_len)
{
 const size_t prefix_len = XATTR_USER_PREFIX_LEN;
 const size_t total_len = prefix_len + name_len + 1;

 if (!test_opt(inode->i_sb, XATTR_USER))
  return 0;

 if (list && total_len <= list_size) {
  memcpy(list, XATTR_USER_PREFIX, prefix_len);
  memcpy(list+prefix_len, name, name_len);
  list[prefix_len + name_len] = '\0';
 }
 return total_len;
}
