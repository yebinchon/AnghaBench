
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usm_user {int dummy; } ;


 int SLIST_REMOVE (int *,struct usm_user*,int ,int ) ;
 int free (struct usm_user*) ;
 int up ;
 int usm_user ;
 int usm_userlist ;

void
usm_delete_user(struct usm_user *uuser)
{
 SLIST_REMOVE(&usm_userlist, uuser, usm_user, up);
 free(uuser);
}
