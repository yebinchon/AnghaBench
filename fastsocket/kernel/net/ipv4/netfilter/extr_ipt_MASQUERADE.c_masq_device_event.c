
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ ifindex; } ;
struct net {int dummy; } ;


 unsigned long NETDEV_DOWN ;
 int NF_CT_ASSERT (int) ;
 int NOTIFY_DONE ;
 struct net* dev_net (struct net_device const*) ;
 int device_cmp ;
 int nf_ct_iterate_cleanup (struct net*,int ,void*) ;

__attribute__((used)) static int masq_device_event(struct notifier_block *this,
        unsigned long event,
        void *ptr)
{
 const struct net_device *dev = ptr;
 struct net *net = dev_net(dev);

 if (event == NETDEV_DOWN) {



  NF_CT_ASSERT(dev->ifindex != 0);

  nf_ct_iterate_cleanup(net, device_cmp,
          (void *)(long)dev->ifindex);
 }

 return NOTIFY_DONE;
}
