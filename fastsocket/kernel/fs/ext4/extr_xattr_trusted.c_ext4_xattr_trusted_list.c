
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int CAP_SYS_ADMIN ;
 char const* XATTR_TRUSTED_PREFIX ;
 size_t XATTR_TRUSTED_PREFIX_LEN ;
 int capable (int ) ;
 int memcpy (char*,char const*,size_t const) ;

__attribute__((used)) static size_t
ext4_xattr_trusted_list(struct inode *inode, char *list, size_t list_size,
   const char *name, size_t name_len)
{
 const size_t prefix_len = XATTR_TRUSTED_PREFIX_LEN;
 const size_t total_len = prefix_len + name_len + 1;

 if (!capable(CAP_SYS_ADMIN))
  return 0;

 if (list && total_len <= list_size) {
  memcpy(list, XATTR_TRUSTED_PREFIX, prefix_len);
  memcpy(list+prefix_len, name, name_len);
  list[prefix_len + name_len] = '\0';
 }
 return total_len;
}
