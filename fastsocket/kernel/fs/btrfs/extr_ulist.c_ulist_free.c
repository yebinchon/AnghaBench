
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist {int dummy; } ;


 int kfree (struct ulist*) ;
 int ulist_fini (struct ulist*) ;

void ulist_free(struct ulist *ulist)
{
 if (!ulist)
  return;
 ulist_fini(ulist);
 kfree(ulist);
}
