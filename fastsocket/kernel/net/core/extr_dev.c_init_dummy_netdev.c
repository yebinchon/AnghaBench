
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int state; int napi_list; int refcnt; int reg_state; } ;


 int INIT_LIST_HEAD (int *) ;
 int NETREG_DUMMY ;
 int __LINK_STATE_PRESENT ;
 int __LINK_STATE_START ;
 int atomic_set (int *,int) ;
 int memset (struct net_device*,int ,int) ;
 int set_bit (int ,int *) ;

int init_dummy_netdev(struct net_device *dev)
{





 memset(dev, 0, sizeof(struct net_device));




 dev->reg_state = NETREG_DUMMY;


 atomic_set(&dev->refcnt, 1);


 INIT_LIST_HEAD(&dev->napi_list);


 set_bit(__LINK_STATE_PRESENT, &dev->state);
 set_bit(__LINK_STATE_START, &dev->state);

 return 0;
}
