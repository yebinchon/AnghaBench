
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; } ;
typedef int mode_t ;


 int ACL_TYPE_DEFAULT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISDIR (int ) ;
 struct posix_acl* nfs3_proc_getacl (struct inode*,int ) ;
 int nfs3_proc_setacls (struct inode*,struct posix_acl*,struct posix_acl*) ;
 struct posix_acl* posix_acl_clone (struct posix_acl*,int ) ;
 int posix_acl_create_masq (struct posix_acl*,int *) ;
 int posix_acl_release (struct posix_acl*) ;

int nfs3_proc_set_default_acl(struct inode *dir, struct inode *inode,
  mode_t mode)
{
 struct posix_acl *dfacl, *acl;
 int error = 0;

 dfacl = nfs3_proc_getacl(dir, ACL_TYPE_DEFAULT);
 if (IS_ERR(dfacl)) {
  error = PTR_ERR(dfacl);
  return (error == -EOPNOTSUPP) ? 0 : error;
 }
 if (!dfacl)
  return 0;
 acl = posix_acl_clone(dfacl, GFP_KERNEL);
 error = -ENOMEM;
 if (!acl)
  goto out_release_dfacl;
 error = posix_acl_create_masq(acl, &mode);
 if (error < 0)
  goto out_release_acl;
 error = nfs3_proc_setacls(inode, acl, S_ISDIR(inode->i_mode) ?
            dfacl : ((void*)0));
out_release_acl:
 posix_acl_release(acl);
out_release_dfacl:
 posix_acl_release(dfacl);
 return error;
}
