
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int i_mode; } ;




 int EINVAL ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 scalar_t__ S_ISDIR (int ) ;
 struct posix_acl* nfs3_proc_getacl (struct inode*,int const) ;
 int nfs3_proc_setacls (struct inode*,struct posix_acl*,struct posix_acl*) ;
 struct posix_acl* posix_acl_from_mode (int ,int ) ;
 int posix_acl_release (struct posix_acl*) ;

int nfs3_proc_setacl(struct inode *inode, int type, struct posix_acl *acl)
{
 struct posix_acl *alloc = ((void*)0), *dfacl = ((void*)0);
 int status;

 if (S_ISDIR(inode->i_mode)) {
  switch(type) {
   case 129:
    alloc = dfacl = nfs3_proc_getacl(inode,
      128);
    if (IS_ERR(alloc))
     goto fail;
    break;

   case 128:
    dfacl = acl;
    alloc = acl = nfs3_proc_getacl(inode,
      129);
    if (IS_ERR(alloc))
     goto fail;
    break;

   default:
    return -EINVAL;
  }
 } else if (type != 129)
   return -EINVAL;

 if (acl == ((void*)0)) {
  alloc = acl = posix_acl_from_mode(inode->i_mode, GFP_KERNEL);
  if (IS_ERR(alloc))
   goto fail;
 }
 status = nfs3_proc_setacls(inode, acl, dfacl);
 posix_acl_release(alloc);
 return status;

fail:
 return PTR_ERR(alloc);
}
