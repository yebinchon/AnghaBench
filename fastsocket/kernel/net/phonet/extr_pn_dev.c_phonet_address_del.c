
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phonet_device_list {int lock; } ;
struct phonet_device {int list; int addrs; } ;
struct net_device {int dummy; } ;


 int EADDRNOTAVAIL ;
 struct phonet_device* __phonet_get (struct net_device*) ;
 scalar_t__ bitmap_empty (int ,int) ;
 int dev_net (struct net_device*) ;
 int kfree (struct phonet_device*) ;
 int list_del (int *) ;
 struct phonet_device_list* phonet_device_list (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_and_clear_bit (int,int ) ;

int phonet_address_del(struct net_device *dev, u8 addr)
{
 struct phonet_device_list *pndevs = phonet_device_list(dev_net(dev));
 struct phonet_device *pnd;
 int err = 0;

 spin_lock_bh(&pndevs->lock);
 pnd = __phonet_get(dev);
 if (!pnd || !test_and_clear_bit(addr >> 2, pnd->addrs))
  err = -EADDRNOTAVAIL;
 else if (bitmap_empty(pnd->addrs, 64)) {
  list_del(&pnd->list);
  kfree(pnd);
 }
 spin_unlock_bh(&pndevs->lock);
 return err;
}
