
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * dev; } ;
struct net {int * loopback_dev; } ;


 int ICMPV6_DEST_UNREACH ;
 unsigned int NF_INET_LOCAL_OUT ;
 int icmpv6_send (struct sk_buff*,int ,unsigned char,int ,int *) ;

__attribute__((used)) static inline void
send_unreach(struct net *net, struct sk_buff *skb_in, unsigned char code,
      unsigned int hooknum)
{
 if (hooknum == NF_INET_LOCAL_OUT && skb_in->dev == ((void*)0))
  skb_in->dev = net->loopback_dev;

 icmpv6_send(skb_in, ICMPV6_DEST_UNREACH, code, 0, ((void*)0));
}
