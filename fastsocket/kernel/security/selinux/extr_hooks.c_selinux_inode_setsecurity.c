
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode_security_struct {int initialized; int sid; } ;
struct inode {struct inode_security_struct* i_security; } ;


 int EACCES ;
 int EOPNOTSUPP ;
 int XATTR_SELINUX_SUFFIX ;
 int security_context_to_sid (void*,size_t,int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int selinux_inode_setsecurity(struct inode *inode, const char *name,
         const void *value, size_t size, int flags)
{
 struct inode_security_struct *isec = inode->i_security;
 u32 newsid;
 int rc;

 if (strcmp(name, XATTR_SELINUX_SUFFIX))
  return -EOPNOTSUPP;

 if (!value || !size)
  return -EACCES;

 rc = security_context_to_sid((void *)value, size, &newsid);
 if (rc)
  return rc;

 isec->sid = newsid;
 isec->initialized = 1;
 return 0;
}
