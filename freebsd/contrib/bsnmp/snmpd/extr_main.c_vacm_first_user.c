
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_user {int dummy; } ;


 struct vacm_user* SLIST_FIRST (int *) ;
 int vacm_userlist ;

struct vacm_user *
vacm_first_user(void)
{
 return (SLIST_FIRST(&vacm_userlist));
}
