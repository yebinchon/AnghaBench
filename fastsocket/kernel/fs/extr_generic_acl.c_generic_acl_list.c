
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct generic_acl_operations {struct posix_acl* (* getacl ) (struct inode*,int) ;} ;




 char* POSIX_ACL_XATTR_ACCESS ;
 char* POSIX_ACL_XATTR_DEFAULT ;
 int memcpy (char*,char const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int strlen (char const*) ;
 struct posix_acl* stub1 (struct inode*,int) ;

size_t
generic_acl_list(struct inode *inode, struct generic_acl_operations *ops,
   int type, char *list, size_t list_size)
{
 struct posix_acl *acl;
 const char *name;
 size_t size;

 acl = ops->getacl(inode, type);
 if (!acl)
  return 0;
 posix_acl_release(acl);

 switch(type) {
  case 129:
   name = POSIX_ACL_XATTR_ACCESS;
   break;

  case 128:
   name = POSIX_ACL_XATTR_DEFAULT;
   break;

  default:
   return 0;
 }
 size = strlen(name) + 1;
 if (list && size <= list_size)
  memcpy(list, name, size);
 return size;
}
