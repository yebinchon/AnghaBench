
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct oxu_hcd {int mem_lock; scalar_t__* qh_used; TYPE_1__* mem; } ;
struct ehci_qh {int dummy; } ;
struct TYPE_2__ {struct ehci_qh* qh_pool; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void oxu_qh_free(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
 int index;

 spin_lock(&oxu->mem_lock);

 index = qh - &oxu->mem->qh_pool[0];
 oxu->qh_used[index] = 0;

 spin_unlock(&oxu->mem_lock);

 return;
}
