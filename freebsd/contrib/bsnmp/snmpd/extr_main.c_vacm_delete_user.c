
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_user {struct vacm_user* group; int group_users; } ;


 scalar_t__ SLIST_EMPTY (int *) ;
 int SLIST_REMOVE (int *,struct vacm_user*,int ,int ) ;
 int free (struct vacm_user*) ;
 struct vacm_user vacm_default_group ;
 int vacm_group ;
 int vacm_grouplist ;
 int vacm_user ;
 int vacm_userlist ;
 int vge ;
 int vvg ;
 int vvu ;

int
vacm_delete_user(struct vacm_user *user)
{
 if (user->group != ((void*)0) && user->group != &vacm_default_group) {
  SLIST_REMOVE(&user->group->group_users, user, vacm_user, vvg);
  if (SLIST_EMPTY(&user->group->group_users)) {
   SLIST_REMOVE(&vacm_grouplist, user->group,
       vacm_group, vge);
   free(user->group);
  }
 }

 SLIST_REMOVE(&vacm_userlist, user, vacm_user, vvu);
 free(user);

 return (0);
}
