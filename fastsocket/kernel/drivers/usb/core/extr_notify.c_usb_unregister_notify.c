
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int usb_notifier_list ;

void usb_unregister_notify(struct notifier_block *nb)
{
 blocking_notifier_chain_unregister(&usb_notifier_list, nb);
}
