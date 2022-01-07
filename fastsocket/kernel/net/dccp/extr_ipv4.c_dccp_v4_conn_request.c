
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct inet_request_sock {int rmt_addr; int loc_addr; } ;
struct dccp_skb_cb {int dccpd_seq; int dccpd_reset_code; } ;
struct dccp_request_sock {int dreq_service; int dreq_iss; int dreq_isr; } ;
typedef int __be32 ;
struct TYPE_6__ {int dccph_req_service; } ;
struct TYPE_5__ {int saddr; int daddr; } ;
struct TYPE_4__ {int rt_flags; } ;


 int DCCP_INC_STATS_BH (int ) ;
 int DCCP_MIB_ATTEMPTFAILS ;
 int DCCP_RESET_CODE_BAD_SERVICE_CODE ;
 int DCCP_RESET_CODE_TOO_BUSY ;
 struct dccp_skb_cb* DCCP_SKB_CB (struct sk_buff*) ;
 int DCCP_TIMEOUT_INIT ;
 int RTCF_BROADCAST ;
 int RTCF_MULTICAST ;
 scalar_t__ dccp_bad_service_code (struct sock*,int const) ;
 TYPE_3__* dccp_hdr_request (struct sk_buff*) ;
 scalar_t__ dccp_parse_options (struct sock*,struct dccp_request_sock*,struct sk_buff*) ;
 scalar_t__ dccp_reqsk_init (struct request_sock*,int ,struct sk_buff*) ;
 int dccp_request_sock_ops ;
 struct dccp_request_sock* dccp_rsk (struct request_sock*) ;
 int dccp_sk (struct sock*) ;
 int dccp_v4_init_sequence (struct sk_buff*) ;
 scalar_t__ dccp_v4_send_response (struct sock*,struct request_sock*) ;
 int inet_csk_reqsk_queue_hash_add (struct sock*,struct request_sock*,int ) ;
 scalar_t__ inet_csk_reqsk_queue_is_full (struct sock*) ;
 int inet_csk_reqsk_queue_young (struct sock*) ;
 struct request_sock* inet_reqsk_alloc (int *) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int reqsk_free (struct request_sock*) ;
 scalar_t__ security_inet_conn_request (struct sock*,struct sk_buff*,struct request_sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 TYPE_1__* skb_rtable (struct sk_buff*) ;

int dccp_v4_conn_request(struct sock *sk, struct sk_buff *skb)
{
 struct inet_request_sock *ireq;
 struct request_sock *req;
 struct dccp_request_sock *dreq;
 const __be32 service = dccp_hdr_request(skb)->dccph_req_service;
 struct dccp_skb_cb *dcb = DCCP_SKB_CB(skb);


 if (skb_rtable(skb)->rt_flags & (RTCF_BROADCAST | RTCF_MULTICAST))
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

 req = inet_reqsk_alloc(&dccp_request_sock_ops);
 if (req == ((void*)0))
  goto drop;

 if (dccp_reqsk_init(req, dccp_sk(sk), skb))
  goto drop_and_free;

 dreq = dccp_rsk(req);
 if (dccp_parse_options(sk, dreq, skb))
  goto drop_and_free;

 if (security_inet_conn_request(sk, skb, req))
  goto drop_and_free;

 ireq = inet_rsk(req);
 ireq->loc_addr = ip_hdr(skb)->daddr;
 ireq->rmt_addr = ip_hdr(skb)->saddr;
 dreq->dreq_isr = dcb->dccpd_seq;
 dreq->dreq_iss = dccp_v4_init_sequence(skb);
 dreq->dreq_service = service;

 if (dccp_v4_send_response(sk, req))
  goto drop_and_free;

 inet_csk_reqsk_queue_hash_add(sk, req, DCCP_TIMEOUT_INIT);
 return 0;

drop_and_free:
 reqsk_free(req);
drop:
 DCCP_INC_STATS_BH(DCCP_MIB_ATTEMPTFAILS);
 return -1;
}
