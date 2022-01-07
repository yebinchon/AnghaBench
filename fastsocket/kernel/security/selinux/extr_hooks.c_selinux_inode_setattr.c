
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iattr {unsigned int ia_valid; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;


 unsigned int ATTR_ATIME_SET ;
 unsigned int ATTR_FORCE ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_KILL_SGID ;
 unsigned int ATTR_KILL_SUID ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME_SET ;
 unsigned int ATTR_TIMES_SET ;
 unsigned int ATTR_UID ;
 int FILE__SETATTR ;
 int FILE__WRITE ;
 struct cred* current_cred () ;
 int dentry_has_perm (struct cred const*,int *,struct dentry*,int ) ;

__attribute__((used)) static int selinux_inode_setattr(struct dentry *dentry, struct iattr *iattr)
{
 const struct cred *cred = current_cred();
 unsigned int ia_valid = iattr->ia_valid;


 if (ia_valid & ATTR_FORCE) {
  ia_valid &= ~(ATTR_KILL_SUID | ATTR_KILL_SGID | ATTR_MODE |
         ATTR_FORCE);
  if (!ia_valid)
   return 0;
 }

 if (ia_valid & (ATTR_MODE | ATTR_UID | ATTR_GID |
   ATTR_ATIME_SET | ATTR_MTIME_SET | ATTR_TIMES_SET))
  return dentry_has_perm(cred, ((void*)0), dentry, FILE__SETATTR);

 return dentry_has_perm(cred, ((void*)0), dentry, FILE__WRITE);
}
