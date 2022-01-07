
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp_hdr ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; TYPE_2__* dev; } ;
struct rt6_info {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int mcast_hops; int hop_limit; int tclass; scalar_t__ mcast_oif; } ;
struct inet6_dev {int dummy; } ;
struct in6_addr {int dummy; } ;
struct icmpv6_msg {void* type; scalar_t__ offset; struct sk_buff* skb; } ;
struct icmp6hdr {void* icmp6_type; } ;
struct flowi {int fl6_dst; scalar_t__ oif; void* fl_icmp_type; int fl6_src; int proto; } ;
struct dst_entry {int dummy; } ;
typedef int fl ;
struct TYPE_5__ {scalar_t__ ifindex; } ;
struct TYPE_4__ {struct in6_addr saddr; struct in6_addr daddr; } ;


 void* ICMPV6_ECHO_REPLY ;
 int IPPROTO_ICMPV6 ;
 int MSG_DONTWAIT ;
 struct net* dev_net (TYPE_2__*) ;
 int dst_release (struct dst_entry*) ;
 struct icmp6hdr* icmp6_hdr (struct sk_buff*) ;
 int icmpv6_getfrag ;
 int icmpv6_push_pending_frames (struct sock*,struct flowi*,struct icmp6hdr*,scalar_t__) ;
 struct sock* icmpv6_xmit_lock (struct net*) ;
 int icmpv6_xmit_unlock (struct sock*) ;
 struct inet6_dev* in6_dev_get (TYPE_2__*) ;
 int in6_dev_put (struct inet6_dev*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ip6_append_data (struct sock*,int ,struct icmpv6_msg*,scalar_t__,int,int,int ,int *,struct flowi*,struct rt6_info*,int ) ;
 int ip6_dst_hoplimit (struct dst_entry*) ;
 int ip6_dst_lookup (struct sock*,struct dst_entry**,struct flowi*) ;
 int ip6_flush_pending_frames (struct sock*) ;
 int ipv6_addr_copy (int *,struct in6_addr*) ;
 scalar_t__ ipv6_addr_is_multicast (int *) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int ipv6_unicast_destination (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int memcpy (struct icmp6hdr*,struct icmp6hdr*,int) ;
 int memset (struct flowi*,int ,int) ;
 int security_skb_classify_flow (struct sk_buff*,struct flowi*) ;
 int xfrm_lookup (struct net*,struct dst_entry**,struct flowi*,struct sock*,int ) ;

__attribute__((used)) static void icmpv6_echo_reply(struct sk_buff *skb)
{
 struct net *net = dev_net(skb->dev);
 struct sock *sk;
 struct inet6_dev *idev;
 struct ipv6_pinfo *np;
 struct in6_addr *saddr = ((void*)0);
 struct icmp6hdr *icmph = icmp6_hdr(skb);
 struct icmp6hdr tmp_hdr;
 struct flowi fl;
 struct icmpv6_msg msg;
 struct dst_entry *dst;
 int err = 0;
 int hlimit;

 saddr = &ipv6_hdr(skb)->daddr;

 if (!ipv6_unicast_destination(skb))
  saddr = ((void*)0);

 memcpy(&tmp_hdr, icmph, sizeof(tmp_hdr));
 tmp_hdr.icmp6_type = ICMPV6_ECHO_REPLY;

 memset(&fl, 0, sizeof(fl));
 fl.proto = IPPROTO_ICMPV6;
 ipv6_addr_copy(&fl.fl6_dst, &ipv6_hdr(skb)->saddr);
 if (saddr)
  ipv6_addr_copy(&fl.fl6_src, saddr);
 fl.oif = skb->dev->ifindex;
 fl.fl_icmp_type = ICMPV6_ECHO_REPLY;
 security_skb_classify_flow(skb, &fl);

 sk = icmpv6_xmit_lock(net);
 if (sk == ((void*)0))
  return;
 np = inet6_sk(sk);

 if (!fl.oif && ipv6_addr_is_multicast(&fl.fl6_dst))
  fl.oif = np->mcast_oif;

 err = ip6_dst_lookup(sk, &dst, &fl);
 if (err)
  goto out;
 if ((err = xfrm_lookup(net, &dst, &fl, sk, 0)) < 0)
  goto out;

 if (ipv6_addr_is_multicast(&fl.fl6_dst))
  hlimit = np->mcast_hops;
 else
  hlimit = np->hop_limit;
 if (hlimit < 0)
  hlimit = ip6_dst_hoplimit(dst);

 idev = in6_dev_get(skb->dev);

 msg.skb = skb;
 msg.offset = 0;
 msg.type = ICMPV6_ECHO_REPLY;

 err = ip6_append_data(sk, icmpv6_getfrag, &msg, skb->len + sizeof(struct icmp6hdr),
    sizeof(struct icmp6hdr), hlimit, np->tclass, ((void*)0), &fl,
    (struct rt6_info*)dst, MSG_DONTWAIT);

 if (err) {
  ip6_flush_pending_frames(sk);
  goto out_put;
 }
 err = icmpv6_push_pending_frames(sk, &fl, &tmp_hdr, skb->len + sizeof(struct icmp6hdr));

out_put:
 if (likely(idev != ((void*)0)))
  in6_dev_put(idev);
 dst_release(dst);
out:
 icmpv6_xmit_unlock(sk);
}
