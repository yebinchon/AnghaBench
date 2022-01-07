
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_access {int dummy; } ;


 struct vacm_access* TAILQ_NEXT (struct vacm_access*,int ) ;
 int vva ;

struct vacm_access *
vacm_next_access_rule(struct vacm_access *acl)
{
 if (acl == ((void*)0))
  return (((void*)0));

 return (TAILQ_NEXT(acl, vva));
}
