
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb_priv {int td_list; } ;
struct uhci_td {int list; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void uhci_add_td_to_urbp(struct uhci_td *td, struct urb_priv *urbp)
{
 list_add_tail(&td->list, &urbp->td_list);
}
