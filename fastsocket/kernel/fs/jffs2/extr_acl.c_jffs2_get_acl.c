
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 struct posix_acl* ACL_NOT_CACHED ;


 int BUG () ;
 int ENODATA ;
 int ENOMEM ;
 int ENOSYS ;
 struct posix_acl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IS_ERR (struct posix_acl*) ;
 int JFFS2_XPREFIX_ACL_ACCESS ;
 int JFFS2_XPREFIX_ACL_DEFAULT ;
 int do_jffs2_getxattr (struct inode*,int,char*,char*,int) ;
 struct posix_acl* get_cached_acl (struct inode*,int) ;
 struct posix_acl* jffs2_acl_from_medium (char*,int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;

__attribute__((used)) static struct posix_acl *jffs2_get_acl(struct inode *inode, int type)
{
 struct posix_acl *acl;
 char *value = ((void*)0);
 int rc, xprefix;

 acl = get_cached_acl(inode, type);
 if (acl != ACL_NOT_CACHED)
  return acl;

 switch (type) {
 case 129:
  xprefix = JFFS2_XPREFIX_ACL_ACCESS;
  break;
 case 128:
  xprefix = JFFS2_XPREFIX_ACL_DEFAULT;
  break;
 default:
  BUG();
 }
 rc = do_jffs2_getxattr(inode, xprefix, "", ((void*)0), 0);
 if (rc > 0) {
  value = kmalloc(rc, GFP_KERNEL);
  if (!value)
   return ERR_PTR(-ENOMEM);
  rc = do_jffs2_getxattr(inode, xprefix, "", value, rc);
 }
 if (rc > 0) {
  acl = jffs2_acl_from_medium(value, rc);
 } else if (rc == -ENODATA || rc == -ENOSYS) {
  acl = ((void*)0);
 } else {
  acl = ERR_PTR(rc);
 }
 if (value)
  kfree(value);
 if (!IS_ERR(acl))
  set_cached_acl(inode, type, acl);
 return acl;
}
