
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_hcd {int * pshadow; int * periodic; int urb_timer; int * async; int * murb_pool; } ;


 int del_timer (int *) ;
 int kfree (int *) ;
 int qh_put (int *) ;

__attribute__((used)) static void ehci_mem_cleanup(struct oxu_hcd *oxu)
{
 kfree(oxu->murb_pool);
 oxu->murb_pool = ((void*)0);

 if (oxu->async)
  qh_put(oxu->async);
 oxu->async = ((void*)0);

 del_timer(&oxu->urb_timer);

 oxu->periodic = ((void*)0);


 kfree(oxu->pshadow);
 oxu->pshadow = ((void*)0);
}
