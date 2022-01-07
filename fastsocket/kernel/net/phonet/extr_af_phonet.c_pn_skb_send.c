
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct sockaddr_pn {int dummy; } ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {int dummy; } ;
struct pn_sock {int sobject; } ;
struct net_device {int flags; } ;


 int EHOSTUNREACH ;
 int IFF_UP ;
 scalar_t__ PN_NO_ADDR ;
 struct net_device* dev_get_by_index (int ,scalar_t__) ;
 int dev_put (struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ phonet_address_get (struct net_device*,scalar_t__) ;
 struct net_device* phonet_device_get (int ) ;
 int pn_addr (int ) ;
 int pn_obj (int ) ;
 int pn_object (scalar_t__,int ) ;
 int pn_send (struct sk_buff*,struct net_device*,int ,int ,int ,int ) ;
 struct pn_sock* pn_sk (struct sock*) ;
 scalar_t__ pn_sockaddr_get_addr (struct sockaddr_pn const*) ;
 int pn_sockaddr_get_object (struct sockaddr_pn const*) ;
 int pn_sockaddr_get_resource (struct sockaddr_pn const*) ;
 int sock_net (struct sock*) ;

int pn_skb_send(struct sock *sk, struct sk_buff *skb,
  const struct sockaddr_pn *target)
{
 struct net_device *dev;
 struct pn_sock *pn = pn_sk(sk);
 int err;
 u16 src;
 u8 daddr = pn_sockaddr_get_addr(target), saddr = PN_NO_ADDR;

 err = -EHOSTUNREACH;
 if (sk->sk_bound_dev_if)
  dev = dev_get_by_index(sock_net(sk), sk->sk_bound_dev_if);
 else
  dev = phonet_device_get(sock_net(sk));
 if (!dev || !(dev->flags & IFF_UP))
  goto drop;

 saddr = phonet_address_get(dev, daddr);
 if (saddr == PN_NO_ADDR)
  goto drop;

 src = pn->sobject;
 if (!pn_addr(src))
  src = pn_object(saddr, pn_obj(src));

 err = pn_send(skb, dev, pn_sockaddr_get_object(target),
   src, pn_sockaddr_get_resource(target), 0);
 dev_put(dev);
 return err;

drop:
 kfree_skb(skb);
 if (dev)
  dev_put(dev);
 return err;
}
