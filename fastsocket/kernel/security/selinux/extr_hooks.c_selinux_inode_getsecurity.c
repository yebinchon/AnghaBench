
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode_security_struct {int sid; } ;
struct inode {struct inode_security_struct* i_security; } ;


 int CAP_MAC_ADMIN ;
 int EOPNOTSUPP ;
 int SECURITY_CAP_NOAUDIT ;
 int XATTR_SELINUX_SUFFIX ;
 int current ;
 int current_cred () ;
 int kfree (char*) ;
 int security_sid_to_context (int ,char**,int*) ;
 int security_sid_to_context_force (int ,char**,int*) ;
 int selinux_capable (int ,int ,int ,int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int selinux_inode_getsecurity(const struct inode *inode, const char *name, void **buffer, bool alloc)
{
 u32 size;
 int error;
 char *context = ((void*)0);
 struct inode_security_struct *isec = inode->i_security;

 if (strcmp(name, XATTR_SELINUX_SUFFIX))
  return -EOPNOTSUPP;
 error = selinux_capable(current, current_cred(), CAP_MAC_ADMIN,
    SECURITY_CAP_NOAUDIT);
 if (!error)
  error = security_sid_to_context_force(isec->sid, &context,
            &size);
 else
  error = security_sid_to_context(isec->sid, &context, &size);
 if (error)
  return error;
 error = size;
 if (alloc) {
  *buffer = context;
  goto out_nofree;
 }
 kfree(context);
out_nofree:
 return error;
}
