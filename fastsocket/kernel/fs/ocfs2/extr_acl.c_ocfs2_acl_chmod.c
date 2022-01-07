
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct ocfs2_super {int s_mount_opt; } ;
struct inode {int i_mode; int i_sb; } ;


 int ACL_TYPE_ACCESS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int OCFS2_MOUNT_POSIX_ACL ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISLNK (int ) ;
 struct posix_acl* ocfs2_get_acl (struct inode*,int ) ;
 int ocfs2_set_acl (int *,struct inode*,int *,int ,struct posix_acl*,int *,int *) ;
 int posix_acl_chmod_masq (struct posix_acl*,int ) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_release (struct posix_acl*) ;

int ocfs2_acl_chmod(struct inode *inode)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct posix_acl *acl, *clone;
 int ret;

 if (S_ISLNK(inode->i_mode))
  return -EOPNOTSUPP;

 if (!(osb->s_mount_opt & OCFS2_MOUNT_POSIX_ACL))
  return 0;

 acl = ocfs2_get_acl(inode, ACL_TYPE_ACCESS);
 if (IS_ERR(acl) || !acl)
  return PTR_ERR(acl);
 clone = posix_acl_clone(acl, GFP_KERNEL);
 posix_acl_release(acl);
 if (!clone)
  return -ENOMEM;
 ret = posix_acl_chmod_masq(clone, inode->i_mode);
 if (!ret)
  ret = ocfs2_set_acl(((void*)0), inode, ((void*)0), ACL_TYPE_ACCESS,
        clone, ((void*)0), ((void*)0));
 posix_acl_release(clone);
 return ret;
}
