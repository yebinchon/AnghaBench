
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usm_user {int dummy; } ;


 struct usm_user* SLIST_NEXT (struct usm_user*,int ) ;
 int up ;

struct usm_user *
usm_next_user(struct usm_user *uuser)
{
 if (uuser == ((void*)0))
  return (((void*)0));

 return (SLIST_NEXT(uuser, up));
}
