
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct nf_conn {TYPE_8__* tuplehash; } ;
struct net_device {int dummy; } ;
struct iphdr {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
typedef enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
struct TYPE_13__ {scalar_t__ all; } ;
struct TYPE_10__ {scalar_t__ ip; } ;
struct TYPE_14__ {TYPE_5__ u; TYPE_2__ u3; } ;
struct TYPE_11__ {scalar_t__ all; } ;
struct TYPE_9__ {scalar_t__ ip; } ;
struct TYPE_12__ {TYPE_3__ u; TYPE_1__ u3; } ;
struct TYPE_15__ {TYPE_6__ src; TYPE_4__ dst; } ;
struct TYPE_16__ {TYPE_7__ tuple; } ;


 int CTINFO2DIR (int) ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 unsigned int NF_STOLEN ;
 int RTN_UNSPEC ;
 int ip_hdrlen (struct sk_buff*) ;
 scalar_t__ ip_route_me_harder (struct sk_buff*,int ) ;
 scalar_t__ ip_xfrm_me_harder (struct sk_buff*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 unsigned int nf_nat_fn (unsigned int,struct sk_buff*,struct net_device const*,struct net_device const*,int (*) (struct sk_buff*)) ;

__attribute__((used)) static unsigned int
nf_nat_local_fn(unsigned int hooknum,
  struct sk_buff *skb,
  const struct net_device *in,
  const struct net_device *out,
  int (*okfn)(struct sk_buff *))
{
 const struct nf_conn *ct;
 enum ip_conntrack_info ctinfo;
 unsigned int ret;


 if (skb->len < sizeof(struct iphdr) ||
     ip_hdrlen(skb) < sizeof(struct iphdr))
  return NF_ACCEPT;

 ret = nf_nat_fn(hooknum, skb, in, out, okfn);
 if (ret != NF_DROP && ret != NF_STOLEN &&
     (ct = nf_ct_get(skb, &ctinfo)) != ((void*)0)) {
  enum ip_conntrack_dir dir = CTINFO2DIR(ctinfo);

  if (ct->tuplehash[dir].tuple.dst.u3.ip !=
      ct->tuplehash[!dir].tuple.src.u3.ip) {
   if (ip_route_me_harder(skb, RTN_UNSPEC))
    ret = NF_DROP;
  }






 }
 return ret;
}
