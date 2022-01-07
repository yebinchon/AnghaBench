
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tcphdr {int doff; int rst; } ;
struct tcp_options_received {scalar_t__ rcv_tsecr; scalar_t__ saw_tstamp; int rcv_tsval; scalar_t__ ts_recent_stamp; int ts_recent; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int retrans; scalar_t__ rcv_wnd; TYPE_3__* rsk_ops; int ts_recent; } ;
typedef int __be32 ;
struct TYPE_14__ {scalar_t__ seq; scalar_t__ ack_seq; scalar_t__ end_seq; } ;
struct TYPE_8__ {int rskq_defer_accept; } ;
struct TYPE_13__ {TYPE_2__* icsk_af_ops; TYPE_1__ icsk_accept_queue; } ;
struct TYPE_12__ {int acked; } ;
struct TYPE_11__ {scalar_t__ rcv_isn; scalar_t__ snt_isn; scalar_t__ snt_synack; } ;
struct TYPE_10__ {int (* send_reset ) (struct sock*,struct sk_buff*) ;int (* send_ack ) (struct sock*,struct sk_buff*,struct request_sock*) ;int (* rtx_syn_ack ) (struct sock*,struct request_sock*) ;} ;
struct TYPE_9__ {struct sock* (* syn_recv_sock ) (struct sock*,struct sk_buff*,struct request_sock*,int *) ;} ;


 int HZ ;
 int LINUX_MIB_EMBRYONICRSTS ;
 int LINUX_MIB_PAWSESTABREJECTED ;
 int NET_INC_STATS_BH (int ,int ) ;
 int TCP_FLAG_ACK ;
 int TCP_FLAG_RST ;
 int TCP_FLAG_SYN ;
 int TCP_INC_STATS_BH (int ,int ) ;
 int TCP_MIB_ATTEMPTFAILS ;
 TYPE_7__* TCP_SKB_CB (struct sk_buff*) ;
 int TCP_TIMEOUT_INIT ;
 int after (scalar_t__,scalar_t__) ;
 scalar_t__ get_seconds () ;
 TYPE_6__* inet_csk (struct sock*) ;
 int inet_csk_reqsk_queue_add (struct sock*,struct request_sock*,struct sock*) ;
 int inet_csk_reqsk_queue_drop (struct sock*,struct request_sock*,struct request_sock**) ;
 int inet_csk_reqsk_queue_removed (struct sock*,struct request_sock*) ;
 int inet_csk_reqsk_queue_unlink (struct sock*,struct request_sock*,struct request_sock**) ;
 TYPE_5__* inet_rsk (struct request_sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*,struct request_sock*) ;
 int stub2 (struct sock*,struct sk_buff*,struct request_sock*) ;
 struct sock* stub3 (struct sock*,struct sk_buff*,struct request_sock*,int *) ;
 int stub4 (struct sock*,struct sk_buff*) ;
 int sysctl_tcp_abort_on_overflow ;
 int tcp_flag_word (struct tcphdr const*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 int tcp_in_window (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int tcp_parse_options (struct sk_buff*,struct tcp_options_received*,int ) ;
 int tcp_paws_reject (struct tcp_options_received*,int ) ;
 TYPE_4__* tcp_rsk (struct request_sock*) ;

struct sock *tcp_check_req(struct sock *sk, struct sk_buff *skb,
      struct request_sock *req,
      struct request_sock **prev)
{
 const struct tcphdr *th = tcp_hdr(skb);
 __be32 flg = tcp_flag_word(th) & (TCP_FLAG_RST|TCP_FLAG_SYN|TCP_FLAG_ACK);
 int paws_reject = 0;
 struct tcp_options_received tmp_opt;
 struct sock *child;

 tmp_opt.saw_tstamp = 0;
 if (th->doff > (sizeof(struct tcphdr)>>2)) {
  tcp_parse_options(skb, &tmp_opt, 0);

  if (tmp_opt.saw_tstamp) {
   tmp_opt.ts_recent = req->ts_recent;




   tmp_opt.ts_recent_stamp = get_seconds() - ((TCP_TIMEOUT_INIT/HZ)<<req->retrans);
   paws_reject = tcp_paws_reject(&tmp_opt, th->rst);
  }
 }


 if (TCP_SKB_CB(skb)->seq == tcp_rsk(req)->rcv_isn &&
     flg == TCP_FLAG_SYN &&
     !paws_reject) {
  req->rsk_ops->rtx_syn_ack(sk, req);
  return ((void*)0);
 }
 if ((flg & TCP_FLAG_ACK) &&
     (TCP_SKB_CB(skb)->ack_seq != tcp_rsk(req)->snt_isn + 1))
  return sk;
 if (paws_reject || !tcp_in_window(TCP_SKB_CB(skb)->seq, TCP_SKB_CB(skb)->end_seq,
       tcp_rsk(req)->rcv_isn + 1, tcp_rsk(req)->rcv_isn + 1 + req->rcv_wnd)) {

  if (!(flg & TCP_FLAG_RST))
   req->rsk_ops->send_ack(sk, skb, req);
  if (paws_reject)
   NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_PAWSESTABREJECTED);
  return ((void*)0);
 }



 if (tmp_opt.saw_tstamp && !after(TCP_SKB_CB(skb)->seq, tcp_rsk(req)->rcv_isn + 1))
  req->ts_recent = tmp_opt.rcv_tsval;

 if (TCP_SKB_CB(skb)->seq == tcp_rsk(req)->rcv_isn) {


  flg &= ~TCP_FLAG_SYN;
 }




 if (flg & (TCP_FLAG_RST|TCP_FLAG_SYN)) {
  TCP_INC_STATS_BH(sock_net(sk), TCP_MIB_ATTEMPTFAILS);
  goto embryonic_reset;
 }




 if (!(flg & TCP_FLAG_ACK))
  return ((void*)0);


 if (req->retrans < inet_csk(sk)->icsk_accept_queue.rskq_defer_accept &&
     TCP_SKB_CB(skb)->end_seq == tcp_rsk(req)->rcv_isn + 1) {
  inet_rsk(req)->acked = 1;
  return ((void*)0);
 }
 if (tmp_opt.saw_tstamp && tmp_opt.rcv_tsecr)
  tcp_rsk(req)->snt_synack = tmp_opt.rcv_tsecr;
 else if (req->retrans)
  tcp_rsk(req)->snt_synack = 0;







 child = inet_csk(sk)->icsk_af_ops->syn_recv_sock(sk, skb, req, ((void*)0));
 if (child == ((void*)0))
  goto listen_overflow;

 inet_csk_reqsk_queue_unlink(sk, req, prev);
 inet_csk_reqsk_queue_removed(sk, req);

 inet_csk_reqsk_queue_add(sk, req, child);
 return child;

listen_overflow:
 if (!sysctl_tcp_abort_on_overflow) {
  inet_rsk(req)->acked = 1;
  return ((void*)0);
 }

embryonic_reset:
 NET_INC_STATS_BH(sock_net(sk), LINUX_MIB_EMBRYONICRSTS);
 if (!(flg & TCP_FLAG_RST))
  req->rsk_ops->send_reset(sk, skb);

 inet_csk_reqsk_queue_drop(sk, req, prev);
 return ((void*)0);
}
