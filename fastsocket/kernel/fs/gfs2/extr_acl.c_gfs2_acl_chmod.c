
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; } ;
struct gfs2_inode {struct inode i_inode; } ;


 int ACL_TYPE_ACCESS ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 struct posix_acl* gfs2_acl_get (struct gfs2_inode*,int ) ;
 int gfs2_setattr_simple (struct inode*,struct iattr*) ;
 int gfs2_xattr_acl_chmod (struct gfs2_inode*,struct iattr*,char*) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 int posix_acl_chmod_masq (struct posix_acl*,int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 unsigned int posix_acl_to_xattr (struct posix_acl*,char*,unsigned int) ;
 int set_cached_acl (struct inode*,int ,struct posix_acl*) ;

int gfs2_acl_chmod(struct gfs2_inode *ip, struct iattr *attr)
{
 struct inode *inode = &ip->i_inode;
 struct posix_acl *acl, *clone;
 char *data;
 unsigned int len;
 int error;

 acl = gfs2_acl_get(ip, ACL_TYPE_ACCESS);
 if (IS_ERR(acl))
  return PTR_ERR(acl);
 if (!acl)
  return gfs2_setattr_simple(inode, attr);

 clone = posix_acl_clone(acl, GFP_NOFS);
 error = -ENOMEM;
 if (!clone)
  goto out;
 posix_acl_release(acl);
 acl = clone;

 error = posix_acl_chmod_masq(acl, attr->ia_mode);
 if (!error) {
  len = posix_acl_to_xattr(acl, ((void*)0), 0);
  data = kmalloc(len, GFP_NOFS);
  error = -ENOMEM;
  if (data == ((void*)0))
   goto out;
  posix_acl_to_xattr(acl, data, len);
  error = gfs2_xattr_acl_chmod(ip, attr, data);
  kfree(data);
  set_cached_acl(&ip->i_inode, ACL_TYPE_ACCESS, acl);
 }

out:
 posix_acl_release(acl);
 return error;
}
