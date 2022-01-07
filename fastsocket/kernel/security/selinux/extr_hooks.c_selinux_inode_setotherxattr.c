
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cred {int dummy; } ;


 int CAP_SETFCAP ;
 int CAP_SYS_ADMIN ;
 int EPERM ;
 int FILE__SETATTR ;
 int XATTR_NAME_CAPS ;
 int XATTR_SECURITY_PREFIX ;
 int capable (int ) ;
 struct cred* current_cred () ;
 int dentry_has_perm (struct cred const*,int *,struct dentry*,int ) ;
 int strcmp (char const*,int ) ;
 int strncmp (char const*,int ,int) ;

__attribute__((used)) static int selinux_inode_setotherxattr(struct dentry *dentry, const char *name)
{
 const struct cred *cred = current_cred();

 if (!strncmp(name, XATTR_SECURITY_PREFIX,
       sizeof XATTR_SECURITY_PREFIX - 1)) {
  if (!strcmp(name, XATTR_NAME_CAPS)) {
   if (!capable(CAP_SETFCAP))
    return -EPERM;
  } else if (!capable(CAP_SYS_ADMIN)) {


   return -EPERM;
  }
 }



 return dentry_has_perm(cred, ((void*)0), dentry, FILE__SETATTR);
}
