
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_5__ {scalar_t__ high_thresh; int mem; } ;
struct TYPE_6__ {TYPE_1__ frags; } ;
struct net {TYPE_2__ ipv4; } ;
struct TYPE_7__ {int lock; } ;
struct ipq {TYPE_3__ q; } ;
struct TYPE_8__ {scalar_t__ dev; } ;


 int ENOMEM ;
 int IPSTATS_MIB_REASMFAILS ;
 int IPSTATS_MIB_REASMREQDS ;
 int IP_INC_STATS_BH (struct net*,int ) ;
 scalar_t__ atomic_read (int *) ;
 struct net* dev_net (scalar_t__) ;
 int ip_evictor (struct net*) ;
 struct ipq* ip_find (struct net*,int ,int ) ;
 int ip_frag_queue (struct ipq*,struct sk_buff*) ;
 int ip_hdr (struct sk_buff*) ;
 int ipq_put (struct ipq*) ;
 int kfree_skb (struct sk_buff*) ;
 TYPE_4__* skb_dst (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ip_defrag(struct sk_buff *skb, u32 user)
{
 struct ipq *qp;
 struct net *net;

 net = skb->dev ? dev_net(skb->dev) : dev_net(skb_dst(skb)->dev);
 IP_INC_STATS_BH(net, IPSTATS_MIB_REASMREQDS);


 if (atomic_read(&net->ipv4.frags.mem) > net->ipv4.frags.high_thresh)
  ip_evictor(net);


 if ((qp = ip_find(net, ip_hdr(skb), user)) != ((void*)0)) {
  int ret;

  spin_lock(&qp->q.lock);

  ret = ip_frag_queue(qp, skb);

  spin_unlock(&qp->q.lock);
  ipq_put(qp);
  return ret;
 }

 IP_INC_STATS_BH(net, IPSTATS_MIB_REASMFAILS);
 kfree_skb(skb);
 return -ENOMEM;
}
