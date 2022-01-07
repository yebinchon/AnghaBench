
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int fb_notifier_list ;

int fb_unregister_client(struct notifier_block *nb)
{
 return blocking_notifier_chain_unregister(&fb_notifier_list, nb);
}
