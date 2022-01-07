
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int lock; scalar_t__ coaddr; } ;
struct sk_buff {scalar_t__ data; } ;
struct ipv6hdr {int saddr; } ;
struct ipv6_destopt_hdr {int nexthdr; } ;
struct in6_addr {int dummy; } ;


 int ENOENT ;
 int ipv6_addr_any (struct in6_addr*) ;
 int ipv6_addr_equal (int *,struct in6_addr*) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int mip6_destopt_input(struct xfrm_state *x, struct sk_buff *skb)
{
 struct ipv6hdr *iph = ipv6_hdr(skb);
 struct ipv6_destopt_hdr *destopt = (struct ipv6_destopt_hdr *)skb->data;
 int err = destopt->nexthdr;

 spin_lock(&x->lock);
 if (!ipv6_addr_equal(&iph->saddr, (struct in6_addr *)x->coaddr) &&
     !ipv6_addr_any((struct in6_addr *)x->coaddr))
  err = -ENOENT;
 spin_unlock(&x->lock);

 return err;
}
