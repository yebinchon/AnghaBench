
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_user {int dummy; } ;


 struct vacm_user* SLIST_NEXT (struct vacm_user*,int ) ;
 int vvu ;

struct vacm_user *
vacm_next_user(struct vacm_user *vuser)
{
 if (vuser == ((void*)0))
  return (((void*)0));

 return (SLIST_NEXT(vuser, vvu));
}
