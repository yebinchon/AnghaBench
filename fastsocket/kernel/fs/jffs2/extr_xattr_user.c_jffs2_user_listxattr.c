
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 char const* XATTR_USER_PREFIX ;
 size_t XATTR_USER_PREFIX_LEN ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static size_t jffs2_user_listxattr(struct inode *inode, char *list, size_t list_size,
       const char *name, size_t name_len)
{
 size_t retlen = XATTR_USER_PREFIX_LEN + name_len + 1;

 if (list && retlen <= list_size) {
  strcpy(list, XATTR_USER_PREFIX);
  strcpy(list + XATTR_USER_PREFIX_LEN, name);
 }

 return retlen;
}
