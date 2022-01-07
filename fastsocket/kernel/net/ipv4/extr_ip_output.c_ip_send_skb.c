
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct net {int dummy; } ;


 int IPSTATS_MIB_OUTDISCARDS ;
 int IP_INC_STATS (struct net*,int ) ;
 int ip_local_out (struct sk_buff*) ;
 int net_xmit_errno (int) ;
 struct net* sock_net (int ) ;

int ip_send_skb(struct sk_buff *skb)
{
 struct net *net = sock_net(skb->sk);
 int err;

 err = ip_local_out(skb);
 if (err) {
  if (err > 0)
   err = net_xmit_errno(err);
  if (err)
   IP_INC_STATS(net, IPSTATS_MIB_OUTDISCARDS);
 }

 return err;
}
