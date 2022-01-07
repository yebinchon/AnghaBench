
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usm_user {int dummy; } ;


 struct usm_user* SLIST_FIRST (int *) ;
 int SLIST_INIT (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct usm_user*) ;
 int up ;
 int usm_userlist ;

void
usm_flush_users(void)
{
 struct usm_user *uuser;

 while ((uuser = SLIST_FIRST(&usm_userlist)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(&usm_userlist, up);
  free(uuser);
 }

 SLIST_INIT(&usm_userlist);
}
