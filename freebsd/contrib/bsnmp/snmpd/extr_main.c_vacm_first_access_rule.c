
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_access {int dummy; } ;


 struct vacm_access* TAILQ_FIRST (int *) ;
 int vacm_accesslist ;

struct vacm_access *
vacm_first_access_rule(void)
{
 return (TAILQ_FIRST(&vacm_accesslist));
}
