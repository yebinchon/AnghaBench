
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sock {int sk_mark; int sk_priority; } ;
struct sk_buff {int network_header; int transport_header; int ip_summed; int mark; int priority; } ;
struct TYPE_8__ {TYPE_4__* dev; } ;
struct TYPE_7__ {TYPE_2__ dst; } ;
struct rtable {TYPE_1__ u; scalar_t__ rt_src; int rt_dst; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; scalar_t__ protocol; scalar_t__ check; int id; int tot_len; scalar_t__ saddr; } ;
struct inet_sock {int recverr; int dport; } ;
struct icmphdr {int type; } ;
struct TYPE_9__ {size_t mtu; } ;


 int CHECKSUM_NONE ;
 int EFAULT ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 scalar_t__ IPPROTO_ICMP ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int IP_INC_STATS (struct net*,int ) ;
 scalar_t__ LL_ALLOCATED_SPACE (TYPE_4__*) ;
 int LL_RESERVED_SPACE (TYPE_4__*) ;
 unsigned int MSG_DONTWAIT ;
 unsigned int MSG_PROBE ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,TYPE_4__*,int ) ;
 int NF_INET_LOCAL_OUT ;
 int PF_INET ;
 int dst_clone (TYPE_2__*) ;
 int dst_output ;
 int htons (size_t) ;
 int icmp_out_count (struct net*,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ip_fast_csum (unsigned char*,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_local_error (struct sock*,int,int ,int ,size_t) ;
 int ip_select_ident (struct iphdr*,TYPE_2__*,int *) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcpy_fromiovecend (void*,void*,int ,size_t) ;
 int net_xmit_errno (int) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,size_t) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,scalar_t__,unsigned int,int*) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static int raw_send_hdrinc(struct sock *sk, void *from, size_t length,
   struct rtable *rt,
   unsigned int flags)
{
 struct inet_sock *inet = inet_sk(sk);
 struct net *net = sock_net(sk);
 struct iphdr *iph;
 struct sk_buff *skb;
 unsigned int iphlen;
 int err;

 if (length > rt->u.dst.dev->mtu) {
  ip_local_error(sk, EMSGSIZE, rt->rt_dst, inet->dport,
          rt->u.dst.dev->mtu);
  return -EMSGSIZE;
 }
 if (flags&MSG_PROBE)
  goto out;

 skb = sock_alloc_send_skb(sk,
      length + LL_ALLOCATED_SPACE(rt->u.dst.dev) + 15,
      flags & MSG_DONTWAIT, &err);
 if (skb == ((void*)0))
  goto error;
 skb_reserve(skb, LL_RESERVED_SPACE(rt->u.dst.dev));

 skb->priority = sk->sk_priority;
 skb->mark = sk->sk_mark;
 skb_dst_set(skb, dst_clone(&rt->u.dst));

 skb_reset_network_header(skb);
 iph = ip_hdr(skb);
 skb_put(skb, length);

 skb->ip_summed = CHECKSUM_NONE;

 skb->transport_header = skb->network_header;
 err = -EFAULT;
 if (memcpy_fromiovecend((void *)iph, from, 0, length))
  goto error_free;

 iphlen = iph->ihl * 4;
 err = -EINVAL;
 if (iphlen > length)
  goto error_free;

 if (iphlen >= sizeof(*iph)) {
  if (!iph->saddr)
   iph->saddr = rt->rt_src;
  iph->check = 0;
  iph->tot_len = htons(length);
  if (!iph->id)
   ip_select_ident(iph, &rt->u.dst, ((void*)0));

  iph->check = ip_fast_csum((unsigned char *)iph, iph->ihl);
 }
 if (iph->protocol == IPPROTO_ICMP)
  icmp_out_count(net, ((struct icmphdr *)
   skb_transport_header(skb))->type);

 err = NF_HOOK(PF_INET, NF_INET_LOCAL_OUT, skb, ((void*)0), rt->u.dst.dev,
        dst_output);
 if (err > 0)
  err = net_xmit_errno(err);
 if (err)
  goto error;
out:
 return 0;

error_free:
 kfree_skb(skb);
error:
 IP_INC_STATS(net, IPSTATS_MIB_OUTDISCARDS);
 if (err == -ENOBUFS && !inet->recverr)
  err = 0;
 return err;
}
