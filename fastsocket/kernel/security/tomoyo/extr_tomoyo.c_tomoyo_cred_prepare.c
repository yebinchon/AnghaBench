
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int security; } ;
typedef int gfp_t ;



__attribute__((used)) static int tomoyo_cred_prepare(struct cred *new, const struct cred *old,
          gfp_t gfp)
{




 new->security = old->security;
 return 0;
}
