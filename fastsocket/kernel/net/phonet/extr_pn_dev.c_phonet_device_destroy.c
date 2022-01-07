
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phonet_device_list {int lock; } ;
struct phonet_device {int addrs; int list; } ;
struct net_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int RTM_DELADDR ;
 struct phonet_device* __phonet_get (struct net_device*) ;
 int dev_net (struct net_device*) ;
 int find_first_bit (int ,int) ;
 int find_next_bit (int ,int,int) ;
 int kfree (struct phonet_device*) ;
 int list_del (int *) ;
 int phonet_address_notify (int ,struct net_device*,int) ;
 struct phonet_device_list* phonet_device_list (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void phonet_device_destroy(struct net_device *dev)
{
 struct phonet_device_list *pndevs = phonet_device_list(dev_net(dev));
 struct phonet_device *pnd;

 ASSERT_RTNL();

 spin_lock_bh(&pndevs->lock);
 pnd = __phonet_get(dev);
 if (pnd)
  list_del(&pnd->list);
 spin_unlock_bh(&pndevs->lock);

 if (pnd) {
  u8 addr;

  for (addr = find_first_bit(pnd->addrs, 64); addr < 64;
   addr = find_next_bit(pnd->addrs, 64, 1+addr))
   phonet_address_notify(RTM_DELADDR, dev, addr);
  kfree(pnd);
 }
}
