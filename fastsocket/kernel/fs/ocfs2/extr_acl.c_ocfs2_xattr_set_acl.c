
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct ocfs2_super {int s_mount_opt; } ;
struct inode {int i_sb; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int OCFS2_MOUNT_POSIX_ACL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (struct posix_acl*) ;
 int is_owner_or_cap (struct inode*) ;
 int ocfs2_set_acl (int *,struct inode*,int *,int,struct posix_acl*,int *,int *) ;
 struct posix_acl* posix_acl_from_xattr (void const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int posix_acl_valid (struct posix_acl*) ;

__attribute__((used)) static int ocfs2_xattr_set_acl(struct inode *inode,
          int type,
          const void *value,
          size_t size)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct posix_acl *acl;
 int ret = 0;

 if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
  return -EOPNOTSUPP;

 if (!is_owner_or_cap(inode))
  return -EPERM;

 if (value) {
  acl = posix_acl_from_xattr(value, size);
  if (IS_ERR(acl))
   return PTR_ERR(acl);
  else if (acl) {
   ret = posix_acl_valid(acl);
   if (ret)
    goto cleanup;
  }
 } else
  acl = ((void*)0);

 ret = ocfs2_set_acl(((void*)0), inode, ((void*)0), type, acl, ((void*)0), ((void*)0));

cleanup:
 posix_acl_release(acl);
 return ret;
}
