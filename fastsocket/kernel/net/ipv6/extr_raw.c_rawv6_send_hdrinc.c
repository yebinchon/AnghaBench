
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int sk_mark; int sk_priority; } ;
struct sk_buff {int len; int network_header; int transport_header; int ip_summed; int mark; int priority; } ;
struct TYPE_7__ {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct rt6_info {int rt6i_idev; TYPE_1__ u; } ;
struct ipv6hdr {int dummy; } ;
struct ipv6_pinfo {int recverr; } ;
struct flowi {int dummy; } ;
struct TYPE_8__ {int mtu; } ;


 int CHECKSUM_NONE ;
 int EFAULT ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int IP6_INC_STATS (int ,int ,int ) ;
 int IP6_UPD_PO_STATS (int ,int ,int ,int ) ;
 int IPSTATS_MIB_OUT ;
 int IPSTATS_MIB_OUTDISCARDS ;
 scalar_t__ LL_ALLOCATED_SPACE (TYPE_3__*) ;
 int LL_RESERVED_SPACE (TYPE_3__*) ;
 unsigned int MSG_DONTWAIT ;
 unsigned int MSG_PROBE ;
 int NF_HOOK (int ,int ,struct sk_buff*,int *,TYPE_3__*,int ) ;
 int NF_INET_LOCAL_OUT ;
 int PF_INET6 ;
 int dst_clone (TYPE_2__*) ;
 int dst_output ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ipv6_local_error (struct sock*,int,struct flowi*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy_fromiovecend (void*,void*,int ,int) ;
 int net_xmit_errno (int) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,scalar_t__,unsigned int,int*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int rawv6_send_hdrinc(struct sock *sk, void *from, int length,
   struct flowi *fl, struct rt6_info *rt,
   unsigned int flags)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct ipv6hdr *iph;
 struct sk_buff *skb;
 int err;

 if (length > rt->u.dst.dev->mtu) {
  ipv6_local_error(sk, EMSGSIZE, fl, rt->u.dst.dev->mtu);
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

 skb_put(skb, length);
 skb_reset_network_header(skb);
 iph = ipv6_hdr(skb);

 skb->ip_summed = CHECKSUM_NONE;

 skb->transport_header = skb->network_header;
 err = memcpy_fromiovecend((void *)iph, from, 0, length);
 if (err)
  goto error_fault;

 IP6_UPD_PO_STATS(sock_net(sk), rt->rt6i_idev, IPSTATS_MIB_OUT, skb->len);
 err = NF_HOOK(PF_INET6, NF_INET_LOCAL_OUT, skb, ((void*)0), rt->u.dst.dev,
        dst_output);
 if (err > 0)
  err = net_xmit_errno(err);
 if (err)
  goto error;
out:
 return 0;

error_fault:
 err = -EFAULT;
 kfree_skb(skb);
error:
 IP6_INC_STATS(sock_net(sk), rt->rt6i_idev, IPSTATS_MIB_OUTDISCARDS);
 if (err == -ENOBUFS && !np->recverr)
  err = 0;
 return err;
}
