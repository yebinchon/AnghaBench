
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct can_filter {int can_mask; int can_id; } ;


 int can_rx_register (struct net_device*,int ,int ,int ,struct sock*,char*) ;
 int can_rx_unregister (struct net_device*,int ,int ,int ,struct sock*) ;
 int raw_rcv ;

__attribute__((used)) static int raw_enable_filters(struct net_device *dev, struct sock *sk,
         struct can_filter *filter, int count)
{
 int err = 0;
 int i;

 for (i = 0; i < count; i++) {
  err = can_rx_register(dev, filter[i].can_id,
          filter[i].can_mask,
          raw_rcv, sk, "raw");
  if (err) {

   while (--i >= 0)
    can_rx_unregister(dev, filter[i].can_id,
        filter[i].can_mask,
        raw_rcv, sk);
   break;
  }
 }

 return err;
}
