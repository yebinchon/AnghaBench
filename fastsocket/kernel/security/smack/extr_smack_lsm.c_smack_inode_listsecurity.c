
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EINVAL ;
 int XATTR_NAME_SMACK ;
 int memcpy (char*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static int smack_inode_listsecurity(struct inode *inode, char *buffer,
        size_t buffer_size)
{
 int len = strlen(XATTR_NAME_SMACK);

 if (buffer != ((void*)0) && len <= buffer_size) {
  memcpy(buffer, XATTR_NAME_SMACK, len);
  return len;
 }
 return -EINVAL;
}
