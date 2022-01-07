
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist {int dummy; } ;


 int ulist_fini (struct ulist*) ;
 int ulist_init (struct ulist*) ;

void ulist_reinit(struct ulist *ulist)
{
 ulist_fini(ulist);
 ulist_init(ulist);
}
