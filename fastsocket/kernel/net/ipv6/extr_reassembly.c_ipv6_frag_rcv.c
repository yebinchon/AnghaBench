
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int transport_header; } ;
struct TYPE_7__ {scalar_t__ high_thresh; int mem; } ;
struct TYPE_8__ {TYPE_1__ frags; } ;
struct net {TYPE_2__ ipv6; } ;
struct ipv6hdr {scalar_t__ payload_len; int daddr; int saddr; } ;
struct TYPE_10__ {int lock; } ;
struct frag_queue {TYPE_5__ q; } ;
struct frag_hdr {int frag_off; int identification; } ;
struct TYPE_11__ {int * nhoff; } ;
struct TYPE_9__ {int dev; } ;


 int ICMPV6_HDR_FIELD ;
 TYPE_6__* IP6CB (struct sk_buff*) ;
 int IP6_INC_STATS (struct net*,int ,int ) ;
 int IP6_INC_STATS_BH (struct net*,int ,int ) ;
 int IPSTATS_MIB_INHDRERRORS ;
 int IPSTATS_MIB_REASMFAILS ;
 int IPSTATS_MIB_REASMOKS ;
 int IPSTATS_MIB_REASMREQDS ;
 scalar_t__ atomic_read (int *) ;
 struct net* dev_net (int ) ;
 struct frag_queue* fq_find (struct net*,int ,int *,int *,int ) ;
 int htons (int) ;
 int icmpv6_param_prob (struct sk_buff*,int ,int ) ;
 int inet_frag_put (TYPE_5__*,int *) ;
 int ip6_dst_idev (TYPE_3__*) ;
 int ip6_evictor (struct net*,int ) ;
 int ip6_frag_queue (struct frag_queue*,struct sk_buff*,struct frag_hdr*,int *) ;
 int ip6_frags ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 TYPE_3__* skb_dst (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 scalar_t__ skb_transport_offset (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ipv6_frag_rcv(struct sk_buff *skb)
{
 struct frag_hdr *fhdr;
 struct frag_queue *fq;
 struct ipv6hdr *hdr = ipv6_hdr(skb);
 struct net *net = dev_net(skb_dst(skb)->dev);

 IP6_INC_STATS_BH(net, ip6_dst_idev(skb_dst(skb)), IPSTATS_MIB_REASMREQDS);


 if (hdr->payload_len==0)
  goto fail_hdr;

 if (!pskb_may_pull(skb, (skb_transport_offset(skb) +
     sizeof(struct frag_hdr))))
  goto fail_hdr;

 hdr = ipv6_hdr(skb);
 fhdr = (struct frag_hdr *)skb_transport_header(skb);

 if (!(fhdr->frag_off & htons(0xFFF9))) {

  skb->transport_header += sizeof(struct frag_hdr);
  IP6_INC_STATS_BH(net,
     ip6_dst_idev(skb_dst(skb)), IPSTATS_MIB_REASMOKS);

  IP6CB(skb)->nhoff = (u8 *)fhdr - skb_network_header(skb);
  return 1;
 }

 if (atomic_read(&net->ipv6.frags.mem) > net->ipv6.frags.high_thresh)
  ip6_evictor(net, ip6_dst_idev(skb_dst(skb)));

 if ((fq = fq_find(net, fhdr->identification, &hdr->saddr, &hdr->daddr,
     ip6_dst_idev(skb_dst(skb)))) != ((void*)0)) {
  int ret;

  spin_lock(&fq->q.lock);

  ret = ip6_frag_queue(fq, skb, fhdr, IP6CB(skb)->nhoff);

  spin_unlock(&fq->q.lock);
  inet_frag_put(&fq->q, &ip6_frags);
  return ret;
 }

 IP6_INC_STATS_BH(net, ip6_dst_idev(skb_dst(skb)), IPSTATS_MIB_REASMFAILS);
 kfree_skb(skb);
 return -1;

fail_hdr:
 IP6_INC_STATS(net, ip6_dst_idev(skb_dst(skb)), IPSTATS_MIB_INHDRERRORS);
 icmpv6_param_prob(skb, ICMPV6_HDR_FIELD, skb_network_header_len(skb));
 return -1;
}
