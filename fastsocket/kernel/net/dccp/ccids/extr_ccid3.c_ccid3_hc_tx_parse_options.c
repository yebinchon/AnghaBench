
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct dccp_sock {scalar_t__ dccps_gsr; } ;
struct ccid3_options_received {scalar_t__ ccid3or_seqno; unsigned char ccid3or_loss_intervals_len; void* ccid3or_receive_rate; scalar_t__ ccid3or_loss_intervals_idx; void* ccid3or_loss_event_rate; } ;
struct ccid3_hc_tx_sock {struct ccid3_options_received ccid3hctx_options_received; } ;
typedef int __be32 ;


 int DCCP_WARN (char*,int ,struct sock*,unsigned char) ;
 int EINVAL ;



 struct ccid3_hc_tx_sock* ccid3_hc_tx_sk (struct sock*) ;
 int ccid3_pr_debug (char*,int ,struct sock*,void*,...) ;
 int dccp_role (struct sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int get_unaligned (int *) ;
 void* ntohl (int ) ;
 int unlikely (int) ;

__attribute__((used)) static int ccid3_hc_tx_parse_options(struct sock *sk, unsigned char option,
         unsigned char len, u16 idx,
         unsigned char *value)
{
 int rc = 0;
 const struct dccp_sock *dp = dccp_sk(sk);
 struct ccid3_hc_tx_sock *hctx = ccid3_hc_tx_sk(sk);
 struct ccid3_options_received *opt_recv;
 __be32 opt_val;

 opt_recv = &hctx->ccid3hctx_options_received;

 if (opt_recv->ccid3or_seqno != dp->dccps_gsr) {
  opt_recv->ccid3or_seqno = dp->dccps_gsr;
  opt_recv->ccid3or_loss_event_rate = ~0;
  opt_recv->ccid3or_loss_intervals_idx = 0;
  opt_recv->ccid3or_loss_intervals_len = 0;
  opt_recv->ccid3or_receive_rate = 0;
 }

 switch (option) {
 case 130:
  if (unlikely(len != 4)) {
   DCCP_WARN("%s(%p), invalid len %d "
      "for TFRC_OPT_LOSS_EVENT_RATE\n",
      dccp_role(sk), sk, len);
   rc = -EINVAL;
  } else {
   opt_val = get_unaligned((__be32 *)value);
   opt_recv->ccid3or_loss_event_rate = ntohl(opt_val);
   ccid3_pr_debug("%s(%p), LOSS_EVENT_RATE=%u\n",
           dccp_role(sk), sk,
           opt_recv->ccid3or_loss_event_rate);
  }
  break;
 case 129:
  opt_recv->ccid3or_loss_intervals_idx = idx;
  opt_recv->ccid3or_loss_intervals_len = len;
  ccid3_pr_debug("%s(%p), LOSS_INTERVALS=(%u, %u)\n",
          dccp_role(sk), sk,
          opt_recv->ccid3or_loss_intervals_idx,
          opt_recv->ccid3or_loss_intervals_len);
  break;
 case 128:
  if (unlikely(len != 4)) {
   DCCP_WARN("%s(%p), invalid len %d "
      "for TFRC_OPT_RECEIVE_RATE\n",
      dccp_role(sk), sk, len);
   rc = -EINVAL;
  } else {
   opt_val = get_unaligned((__be32 *)value);
   opt_recv->ccid3or_receive_rate = ntohl(opt_val);
   ccid3_pr_debug("%s(%p), RECEIVE_RATE=%u\n",
           dccp_role(sk), sk,
           opt_recv->ccid3or_receive_rate);
  }
  break;
 }

 return rc;
}
