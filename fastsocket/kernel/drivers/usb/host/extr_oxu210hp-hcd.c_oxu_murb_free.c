
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_murb {int dummy; } ;
struct oxu_hcd {int mem_lock; scalar_t__* murb_used; struct oxu_murb* murb_pool; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void oxu_murb_free(struct oxu_hcd *oxu, struct oxu_murb *murb)
{
 int index;

 spin_lock(&oxu->mem_lock);

 index = murb - &oxu->murb_pool[0];
 oxu->murb_used[index] = 0;

 spin_unlock(&oxu->mem_lock);

 return;
}
