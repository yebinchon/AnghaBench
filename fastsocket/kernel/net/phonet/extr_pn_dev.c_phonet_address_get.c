
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phonet_device_list {int lock; } ;
struct phonet_device {int addrs; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int ) ;
 int PN_NO_ADDR ;
 struct phonet_device* __phonet_get (struct net_device*) ;
 int bitmap_empty (int ,int) ;
 int dev_net (struct net_device*) ;
 int find_first_bit (int ,int) ;
 struct phonet_device_list* phonet_device_list (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int,int ) ;

u8 phonet_address_get(struct net_device *dev, u8 addr)
{
 struct phonet_device_list *pndevs = phonet_device_list(dev_net(dev));
 struct phonet_device *pnd;

 spin_lock_bh(&pndevs->lock);
 pnd = __phonet_get(dev);
 if (pnd) {
  BUG_ON(bitmap_empty(pnd->addrs, 64));


  if (!test_bit(addr >> 2, pnd->addrs))
   addr = find_first_bit(pnd->addrs, 64) << 2;
 } else
  addr = PN_NO_ADDR;
 spin_unlock_bh(&pndevs->lock);
 return addr;
}
