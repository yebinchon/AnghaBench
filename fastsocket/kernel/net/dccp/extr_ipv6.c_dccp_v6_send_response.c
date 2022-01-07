
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {int tot_len; int * srcrt; } ;
struct ipv6_pinfo {struct ipv6_txoptions* opt; } ;
struct in6_addr {int dummy; } ;
struct inet6_request_sock {struct in6_addr rmt_addr; struct in6_addr loc_addr; int iif; } ;
struct flowi {struct in6_addr fl6_dst; int fl_ip_sport; int fl_ip_dport; int oif; scalar_t__ fl6_flowlabel; struct in6_addr fl6_src; int proto; } ;
struct dst_entry {int dummy; } ;
struct dccp_hdr {int dccph_checksum; } ;
typedef int fl ;
struct TYPE_2__ {int loc_port; int rmt_port; } ;


 int IPPROTO_DCCP ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 struct sk_buff* dccp_make_response (struct sock*,struct dst_entry*,struct request_sock*) ;
 int dccp_v6_csum_finish (struct sk_buff*,struct in6_addr*,struct in6_addr*) ;
 int dst_release (struct dst_entry*) ;
 struct inet6_request_sock* inet6_rsk (struct request_sock*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 TYPE_1__* inet_rsk (struct request_sock*) ;
 int ip6_dst_lookup (struct sock*,struct dst_entry**,struct flowi*) ;
 int ip6_xmit (struct sock*,struct sk_buff*,struct flowi*,struct ipv6_txoptions*,int ) ;
 int ipv6_addr_copy (struct in6_addr*,struct in6_addr*) ;
 int memset (struct flowi*,int ,int) ;
 int net_xmit_eval (int) ;
 int security_req_classify_flow (struct request_sock*,struct flowi*) ;
 int sock_kfree_s (struct sock*,struct ipv6_txoptions*,int ) ;
 int sock_net (struct sock*) ;
 int xfrm_lookup (int ,struct dst_entry**,struct flowi*,struct sock*,int ) ;

__attribute__((used)) static int dccp_v6_send_response(struct sock *sk, struct request_sock *req)
{
 struct inet6_request_sock *ireq6 = inet6_rsk(req);
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct sk_buff *skb;
 struct ipv6_txoptions *opt = ((void*)0);
 struct in6_addr *final_p = ((void*)0), final;
 struct flowi fl;
 int err = -1;
 struct dst_entry *dst;

 memset(&fl, 0, sizeof(fl));
 fl.proto = IPPROTO_DCCP;
 ipv6_addr_copy(&fl.fl6_dst, &ireq6->rmt_addr);
 ipv6_addr_copy(&fl.fl6_src, &ireq6->loc_addr);
 fl.fl6_flowlabel = 0;
 fl.oif = ireq6->iif;
 fl.fl_ip_dport = inet_rsk(req)->rmt_port;
 fl.fl_ip_sport = inet_rsk(req)->loc_port;
 security_req_classify_flow(req, &fl);

 opt = np->opt;

 if (opt != ((void*)0) && opt->srcrt != ((void*)0)) {
  const struct rt0_hdr *rt0 = (struct rt0_hdr *)opt->srcrt;

  ipv6_addr_copy(&final, &fl.fl6_dst);
  ipv6_addr_copy(&fl.fl6_dst, rt0->addr);
  final_p = &final;
 }

 err = ip6_dst_lookup(sk, &dst, &fl);
 if (err)
  goto done;

 if (final_p)
  ipv6_addr_copy(&fl.fl6_dst, final_p);

 err = xfrm_lookup(sock_net(sk), &dst, &fl, sk, 0);
 if (err < 0)
  goto done;

 skb = dccp_make_response(sk, dst, req);
 if (skb != ((void*)0)) {
  struct dccp_hdr *dh = dccp_hdr(skb);

  dh->dccph_checksum = dccp_v6_csum_finish(skb,
        &ireq6->loc_addr,
        &ireq6->rmt_addr);
  ipv6_addr_copy(&fl.fl6_dst, &ireq6->rmt_addr);
  err = ip6_xmit(sk, skb, &fl, opt, 0);
  err = net_xmit_eval(err);
 }

done:
 if (opt != ((void*)0) && opt != np->opt)
  sock_kfree_s(sk, opt, opt->tot_len);
 dst_release(dst);
 return err;
}
