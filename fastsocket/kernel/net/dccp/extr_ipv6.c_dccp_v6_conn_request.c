
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_bound_dev_if; } ;
struct sk_buff {scalar_t__ protocol; int users; } ;
struct request_sock {int dummy; } ;
struct TYPE_5__ {scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_6__ {TYPE_1__ bits; } ;
struct ipv6_pinfo {TYPE_2__ rxopt; } ;
struct inet6_request_sock {int iif; int rmt_addr; struct sk_buff* pktopts; int loc_addr; } ;
struct dccp_skb_cb {int dccpd_seq; int dccpd_reset_code; } ;
struct dccp_request_sock {int dreq_service; int dreq_iss; int dreq_isr; } ;
typedef int __be32 ;
struct TYPE_8__ {int dccph_req_service; } ;
struct TYPE_7__ {int daddr; int saddr; } ;


 int DCCP_INC_STATS_BH (int ) ;
 int DCCP_MIB_ATTEMPTFAILS ;
 int DCCP_RESET_CODE_BAD_SERVICE_CODE ;
 int DCCP_RESET_CODE_TOO_BUSY ;
 struct dccp_skb_cb* DCCP_SKB_CB (struct sk_buff*) ;
 int DCCP_TIMEOUT_INIT ;
 int ETH_P_IP ;
 int IPV6_ADDR_LINKLOCAL ;
 int atomic_inc (int *) ;
 int dccp6_request_sock_ops ;
 scalar_t__ dccp_bad_service_code (struct sock*,int const) ;
 TYPE_4__* dccp_hdr_request (struct sk_buff*) ;
 scalar_t__ dccp_parse_options (struct sock*,struct dccp_request_sock*,struct sk_buff*) ;
 scalar_t__ dccp_reqsk_init (struct request_sock*,int ,struct sk_buff*) ;
 struct dccp_request_sock* dccp_rsk (struct request_sock*) ;
 int dccp_sk (struct sock*) ;
 int dccp_v4_conn_request (struct sock*,struct sk_buff*) ;
 int dccp_v6_init_sequence (struct sk_buff*) ;
 scalar_t__ dccp_v6_send_response (struct sock*,struct request_sock*) ;
 scalar_t__ htons (int ) ;
 int inet6_csk_reqsk_queue_hash_add (struct sock*,struct request_sock*,int ) ;
 int inet6_iif (struct sk_buff*) ;
 struct request_sock* inet6_reqsk_alloc (int *) ;
 struct inet6_request_sock* inet6_rsk (struct request_sock*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 scalar_t__ inet_csk_reqsk_queue_is_full (struct sock*) ;
 int inet_csk_reqsk_queue_young (struct sock*) ;
 int ipv6_addr_copy (int *,int *) ;
 int ipv6_addr_type (int *) ;
 TYPE_3__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ ipv6_opt_accepted (struct sock*,struct sk_buff*) ;
 int ipv6_unicast_destination (struct sk_buff*) ;
 int reqsk_free (struct request_sock*) ;
 scalar_t__ security_inet_conn_request (struct sock*,struct sk_buff*,struct request_sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;

__attribute__((used)) static int dccp_v6_conn_request(struct sock *sk, struct sk_buff *skb)
{
 struct request_sock *req;
 struct dccp_request_sock *dreq;
 struct inet6_request_sock *ireq6;
 struct ipv6_pinfo *np = inet6_sk(sk);
 const __be32 service = dccp_hdr_request(skb)->dccph_req_service;
 struct dccp_skb_cb *dcb = DCCP_SKB_CB(skb);

 if (skb->protocol == htons(ETH_P_IP))
  return dccp_v4_conn_request(sk, skb);

 if (!ipv6_unicast_destination(skb))
  return 0;

 if (dccp_bad_service_code(sk, service)) {
  dcb->dccpd_reset_code = DCCP_RESET_CODE_BAD_SERVICE_CODE;
  goto drop;
 }



 dcb->dccpd_reset_code = DCCP_RESET_CODE_TOO_BUSY;
 if (inet_csk_reqsk_queue_is_full(sk))
  goto drop;

 if (sk_acceptq_is_full(sk) && inet_csk_reqsk_queue_young(sk) > 1)
  goto drop;

 req = inet6_reqsk_alloc(&dccp6_request_sock_ops);
 if (req == ((void*)0))
  goto drop;

 if (dccp_reqsk_init(req, dccp_sk(sk), skb))
  goto drop_and_free;

 dreq = dccp_rsk(req);
 if (dccp_parse_options(sk, dreq, skb))
  goto drop_and_free;

 if (security_inet_conn_request(sk, skb, req))
  goto drop_and_free;

 ireq6 = inet6_rsk(req);
 ipv6_addr_copy(&ireq6->rmt_addr, &ipv6_hdr(skb)->saddr);
 ipv6_addr_copy(&ireq6->loc_addr, &ipv6_hdr(skb)->daddr);

 if (ipv6_opt_accepted(sk, skb) ||
     np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo ||
     np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim) {
  atomic_inc(&skb->users);
  ireq6->pktopts = skb;
 }
 ireq6->iif = sk->sk_bound_dev_if;


 if (!sk->sk_bound_dev_if &&
     ipv6_addr_type(&ireq6->rmt_addr) & IPV6_ADDR_LINKLOCAL)
  ireq6->iif = inet6_iif(skb);
 dreq->dreq_isr = dcb->dccpd_seq;
 dreq->dreq_iss = dccp_v6_init_sequence(skb);
 dreq->dreq_service = service;

 if (dccp_v6_send_response(sk, req))
  goto drop_and_free;

 inet6_csk_reqsk_queue_hash_add(sk, req, DCCP_TIMEOUT_INIT);
 return 0;

drop_and_free:
 reqsk_free(req);
drop:
 DCCP_INC_STATS_BH(DCCP_MIB_ATTEMPTFAILS);
 return -1;
}
