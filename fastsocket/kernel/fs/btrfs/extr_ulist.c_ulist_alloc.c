
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist {int dummy; } ;
typedef int gfp_t ;


 struct ulist* kmalloc (int,int ) ;
 int ulist_init (struct ulist*) ;

struct ulist *ulist_alloc(gfp_t gfp_mask)
{
 struct ulist *ulist = kmalloc(sizeof(*ulist), gfp_mask);

 if (!ulist)
  return ((void*)0);

 ulist_init(ulist);

 return ulist;
}
