
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int unreg_list; } ;


 int LIST_HEAD (int ) ;
 int dev_deactivate_many (int *) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 TYPE_1__* netdev_extended (struct net_device*) ;
 int single ;

void dev_deactivate(struct net_device *dev)
{
 LIST_HEAD(single);

 list_add(&netdev_extended(dev)->unreg_list, &single);
 dev_deactivate_many(&single);
 list_del(&single);
}
