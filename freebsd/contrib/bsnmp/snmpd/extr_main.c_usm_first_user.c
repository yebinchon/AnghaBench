
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usm_user {int dummy; } ;


 struct usm_user* SLIST_FIRST (int *) ;
 int usm_userlist ;

struct usm_user *
usm_first_user(void)
{
 return (SLIST_FIRST(&usm_userlist));
}
