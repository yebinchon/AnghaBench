
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int ACL_TYPE_DEFAULT ;
 int EINVAL ;
 int jffs2_acl_getxattr (struct inode*,int ,void*,size_t) ;

__attribute__((used)) static int jffs2_acl_default_getxattr(struct inode *inode, const char *name, void *buffer, size_t size)
{
 if (name[0] != '\0')
  return -EINVAL;
 return jffs2_acl_getxattr(inode, ACL_TYPE_DEFAULT, buffer, size);
}
