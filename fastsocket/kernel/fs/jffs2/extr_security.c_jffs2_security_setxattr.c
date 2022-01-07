
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EINVAL ;
 int JFFS2_XPREFIX_SECURITY ;
 int do_jffs2_setxattr (struct inode*,int ,char const*,void const*,size_t,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int jffs2_security_setxattr(struct inode *inode, const char *name, const void *buffer,
       size_t size, int flags)
{
 if (!strcmp(name, ""))
  return -EINVAL;

 return do_jffs2_setxattr(inode, JFFS2_XPREFIX_SECURITY, name, buffer, size, flags);
}
