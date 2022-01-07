
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_sb; } ;


 struct posix_acl* ACL_NOT_CACHED ;


 int BUG () ;
 int ENODATA ;
 int ENOMEM ;
 int ENOSYS ;
 struct posix_acl* ERR_PTR (int) ;
 int EXT3_XATTR_INDEX_POSIX_ACL_ACCESS ;
 int EXT3_XATTR_INDEX_POSIX_ACL_DEFAULT ;
 int GFP_NOFS ;
 int IS_ERR (struct posix_acl*) ;
 int POSIX_ACL ;
 struct posix_acl* ext3_acl_from_disk (char*,int) ;
 int ext3_xattr_get (struct inode*,int,char*,char*,int) ;
 struct posix_acl* get_cached_acl (struct inode*,int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int set_cached_acl (struct inode*,int,struct posix_acl*) ;
 int test_opt (int ,int ) ;

__attribute__((used)) static struct posix_acl *
ext3_get_acl(struct inode *inode, int type)
{
 int name_index;
 char *value = ((void*)0);
 struct posix_acl *acl;
 int retval;

 if (!test_opt(inode->i_sb, POSIX_ACL))
  return ((void*)0);

 acl = get_cached_acl(inode, type);
 if (acl != ACL_NOT_CACHED)
  return acl;

 switch (type) {
 case 129:
  name_index = EXT3_XATTR_INDEX_POSIX_ACL_ACCESS;
  break;
 case 128:
  name_index = EXT3_XATTR_INDEX_POSIX_ACL_DEFAULT;
  break;
 default:
  BUG();
 }

 retval = ext3_xattr_get(inode, name_index, "", ((void*)0), 0);
 if (retval > 0) {
  value = kmalloc(retval, GFP_NOFS);
  if (!value)
   return ERR_PTR(-ENOMEM);
  retval = ext3_xattr_get(inode, name_index, "", value, retval);
 }
 if (retval > 0)
  acl = ext3_acl_from_disk(value, retval);
 else if (retval == -ENODATA || retval == -ENOSYS)
  acl = ((void*)0);
 else
  acl = ERR_PTR(retval);
 kfree(value);

 if (!IS_ERR(acl))
  set_cached_acl(inode, type, acl);

 return acl;
}
