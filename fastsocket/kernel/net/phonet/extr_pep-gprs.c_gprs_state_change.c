
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; struct gprs_dev* sk_user_data; } ;
struct net_device {int dummy; } ;
struct gprs_dev {struct net_device* dev; } ;


 scalar_t__ TCP_CLOSE_WAIT ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static void gprs_state_change(struct sock *sk)
{
 struct gprs_dev *gp = sk->sk_user_data;

 if (sk->sk_state == TCP_CLOSE_WAIT) {
  struct net_device *dev = gp->dev;

  netif_stop_queue(dev);
  netif_carrier_off(dev);
 }
}
