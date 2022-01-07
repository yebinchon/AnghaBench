
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int memcpy (char*,char const*,size_t) ;
 int reiserfs_xattrs_user (int ) ;

__attribute__((used)) static size_t user_list(struct inode *inode, char *list, size_t list_size,
   const char *name, size_t name_len)
{
 const size_t len = name_len + 1;

 if (!reiserfs_xattrs_user(inode->i_sb))
  return 0;
 if (list && len <= list_size) {
  memcpy(list, name, name_len);
  list[name_len] = '\0';
 }
 return len;
}
