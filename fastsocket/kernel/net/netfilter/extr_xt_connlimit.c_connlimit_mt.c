
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union nf_inet_addr {int ip; int ip6; } ;
struct xt_match_param {int* hotdrop; int family; struct xt_connlimit_info* matchinfo; } ;
struct xt_connlimit_info {int limit; int inverse; TYPE_2__* data; int mask; } ;
struct sk_buff {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
struct ipv6hdr {int saddr; } ;
struct iphdr {int saddr; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {struct nf_conntrack_tuple tuple; } ;


 int NFPROTO_IPV6 ;
 int count_them (TYPE_2__*,struct nf_conntrack_tuple const*,union nf_inet_addr*,int *,int ) ;
 struct iphdr* ip_hdr (struct sk_buff const*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff const*) ;
 int memcpy (int *,int *,int) ;
 struct nf_conn* nf_ct_get (struct sk_buff const*,int*) ;
 int nf_ct_get_tuplepr (struct sk_buff const*,int ,int ,struct nf_conntrack_tuple*) ;
 int skb_network_offset (struct sk_buff const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool
connlimit_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_connlimit_info *info = par->matchinfo;
 union nf_inet_addr addr;
 struct nf_conntrack_tuple tuple;
 const struct nf_conntrack_tuple *tuple_ptr = &tuple;
 enum ip_conntrack_info ctinfo;
 const struct nf_conn *ct;
 int connections;

 ct = nf_ct_get(skb, &ctinfo);
 if (ct != ((void*)0))
  tuple_ptr = &ct->tuplehash[0].tuple;
 else if (!nf_ct_get_tuplepr(skb, skb_network_offset(skb),
        par->family, &tuple))
  goto hotdrop;

 if (par->family == NFPROTO_IPV6) {
  const struct ipv6hdr *iph = ipv6_hdr(skb);
  memcpy(&addr.ip6, &iph->saddr, sizeof(iph->saddr));
 } else {
  const struct iphdr *iph = ip_hdr(skb);
  addr.ip = iph->saddr;
 }

 spin_lock_bh(&info->data->lock);
 connections = count_them(info->data, tuple_ptr, &addr,
                          &info->mask, par->family);
 spin_unlock_bh(&info->data->lock);

 if (connections < 0) {

  *par->hotdrop = 1;
  return 0;
 }

 return (connections > info->limit) ^ info->inverse;

 hotdrop:
 *par->hotdrop = 1;
 return 0;
}
