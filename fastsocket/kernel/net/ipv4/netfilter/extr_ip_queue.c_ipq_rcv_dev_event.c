
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int ifindex; } ;


 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int ipq_dev_drop (int ) ;
 int net_eq (int ,int *) ;

__attribute__((used)) static int
ipq_rcv_dev_event(struct notifier_block *this,
    unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;


 if (event == NETDEV_DOWN)
  ipq_dev_drop(dev->ifindex);
 return NOTIFY_DONE;
}
