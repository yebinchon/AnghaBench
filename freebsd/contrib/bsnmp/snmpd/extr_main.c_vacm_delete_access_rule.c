
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_access {int dummy; } ;


 int TAILQ_REMOVE (int *,struct vacm_access*,int ) ;
 int free (struct vacm_access*) ;
 int vacm_accesslist ;
 int vva ;

int
vacm_delete_access_rule(struct vacm_access *acl)
{
 TAILQ_REMOVE(&vacm_accesslist, acl, vva);
 free(acl);

 return (0);
}
