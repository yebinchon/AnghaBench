
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
typedef int kernel_cap_t ;


 int PROCESS__SETCAP ;
 int cap_capset (struct cred*,struct cred const*,int const*,int const*,int const*) ;
 int cred_has_perm (struct cred const*,struct cred*,int ) ;

__attribute__((used)) static int selinux_capset(struct cred *new, const struct cred *old,
     const kernel_cap_t *effective,
     const kernel_cap_t *inheritable,
     const kernel_cap_t *permitted)
{
 int error;

 error = cap_capset(new, old,
          effective, inheritable, permitted);
 if (error)
  return error;

 return cred_has_perm(old, new, PROCESS__SETCAP);
}
