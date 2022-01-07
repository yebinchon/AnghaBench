
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int EINVAL ;
 int JFFS2_XPREFIX_USER ;
 int do_jffs2_getxattr (struct inode*,int ,char const*,void*,size_t) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int jffs2_user_getxattr(struct inode *inode, const char *name,
          void *buffer, size_t size)
{
 if (!strcmp(name, ""))
  return -EINVAL;
 return do_jffs2_getxattr(inode, JFFS2_XPREFIX_USER, name, buffer, size);
}
