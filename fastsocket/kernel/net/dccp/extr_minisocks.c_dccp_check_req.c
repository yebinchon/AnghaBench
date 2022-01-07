
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {TYPE_2__* rsk_ops; int retrans; } ;
struct dccp_request_sock {scalar_t__ dreq_iss; int dreq_isr; } ;
struct TYPE_10__ {scalar_t__ dccpd_ack_seq; int dccpd_reset_code; int dccpd_seq; } ;
struct TYPE_9__ {scalar_t__ dccph_type; } ;
struct TYPE_8__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_7__ {int (* send_reset ) (struct sock*,struct sk_buff*) ;int (* rtx_syn_ack ) (struct sock*,struct request_sock*) ;} ;
struct TYPE_6__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,int *) ;} ;


 scalar_t__ DCCP_PKT_ACK ;
 scalar_t__ DCCP_PKT_DATAACK ;
 scalar_t__ DCCP_PKT_REQUEST ;
 scalar_t__ DCCP_PKT_RESET ;
 int DCCP_RESET_CODE_PACKET_ERROR ;
 int DCCP_RESET_CODE_TOO_BUSY ;
 TYPE_5__* DCCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after48 (int ,int ) ;
 TYPE_4__* dccp_hdr (struct sk_buff*) ;
 scalar_t__ dccp_parse_options (struct sock*,struct dccp_request_sock*,struct sk_buff*) ;
 int dccp_pr_debug (char*,...) ;
 struct dccp_request_sock* dccp_rsk (struct request_sock*) ;
 TYPE_3__* inet_csk (struct sock*) ;
 int inet_csk_reqsk_queue_add (struct sock*,struct request_sock*,struct sock*) ;
 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*,struct request_sock**) ;
 int inet_csk_reqsk_queue_removed (struct sock*,struct request_sock*) ;
 int inet_csk_reqsk_queue_unlink (struct sock*,struct request_sock*,struct request_sock**) ;
 int stub1 (struct sock*,struct request_sock*) ;
 struct sock* stub2 (struct sock*,struct sk_buff*,struct request_sock*,int *) ;
 int stub3 (struct sock*,struct sk_buff*) ;

struct sock *dccp_check_req(struct sock *sk, struct sk_buff *skb,
       struct request_sock *req,
       struct request_sock **prev)
{
 struct sock *child = ((void*)0);
 struct dccp_request_sock *dreq = dccp_rsk(req);


 if (dccp_hdr(skb)->dccph_type == DCCP_PKT_REQUEST) {

  if (after48(DCCP_SKB_CB(skb)->dccpd_seq, dreq->dreq_isr)) {
   dccp_pr_debug("Retransmitted REQUEST\n");
   dreq->dreq_isr = DCCP_SKB_CB(skb)->dccpd_seq;





   req->retrans++;
   req->rsk_ops->rtx_syn_ack(sk, req);
  }

  return ((void*)0);
 }

 DCCP_SKB_CB(skb)->dccpd_reset_code = DCCP_RESET_CODE_PACKET_ERROR;

 if (dccp_hdr(skb)->dccph_type != DCCP_PKT_ACK &&
     dccp_hdr(skb)->dccph_type != DCCP_PKT_DATAACK)
  goto drop;


 if (DCCP_SKB_CB(skb)->dccpd_ack_seq != dreq->dreq_iss) {
  dccp_pr_debug("Invalid ACK number: ack_seq=%llu, "
         "dreq_iss=%llu\n",
         (unsigned long long)
         DCCP_SKB_CB(skb)->dccpd_ack_seq,
         (unsigned long long) dreq->dreq_iss);
  goto drop;
 }

 if (dccp_parse_options(sk, dreq, skb))
   goto drop;

 child = inet_csk(sk)->icsk_af_ops->syn_recv_sock(sk, skb, req, ((void*)0));
 if (child == ((void*)0))
  goto listen_overflow;

 inet_csk_reqsk_queue_unlink(sk, req, prev);
 inet_csk_reqsk_queue_removed(sk, req);
 inet_csk_reqsk_queue_add(sk, req, child);
out:
 return child;
listen_overflow:
 dccp_pr_debug("listen_overflow!\n");
 DCCP_SKB_CB(skb)->dccpd_reset_code = DCCP_RESET_CODE_TOO_BUSY;
drop:
 if (dccp_hdr(skb)->dccph_type != DCCP_PKT_RESET)
  req->rsk_ops->send_reset(sk, skb);

 inet_csk_reqsk_queue_drop(sk, req, prev);
 goto out;
}
