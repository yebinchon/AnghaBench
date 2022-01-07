
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ul_debug; } ;
typedef TYPE_1__ uu_list_t ;


 void* uu_list_first (TYPE_1__*) ;
 int uu_list_remove (TYPE_1__*,void*) ;
 int uu_panic (char*,void*,void*) ;

void *
uu_list_teardown(uu_list_t *lp, void **cookie)
{
 void *ep;




 if (lp->ul_debug && *cookie != ((void*)0))
  uu_panic("uu_list_teardown(%p, %p): unexpected cookie\n",
      (void *)lp, (void *)cookie);

 ep = uu_list_first(lp);
 if (ep)
  uu_list_remove(lp, ep);
 return (ep);
}
