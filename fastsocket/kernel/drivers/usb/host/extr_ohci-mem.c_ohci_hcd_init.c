
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {int pending; int lock; int next_statechange; } ;


 int INIT_LIST_HEAD (int *) ;
 int jiffies ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void ohci_hcd_init (struct ohci_hcd *ohci)
{
 ohci->next_statechange = jiffies;
 spin_lock_init (&ohci->lock);
 INIT_LIST_HEAD (&ohci->pending);
}
