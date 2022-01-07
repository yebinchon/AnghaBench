
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef void* u64 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct dccp_sock {int dccps_l_ack_ratio; } ;
struct ccid2_seq {void* ccid2s_seq; int ccid2s_acked; struct ccid2_seq* ccid2s_next; struct ccid2_seq* ccid2s_prev; } ;
struct ccid2_hc_tx_sock {int ccid2hctx_rpdupack; void* ccid2hctx_rpseq; void* ccid2hctx_high_ack; scalar_t__ ccid2hctx_cwnd; scalar_t__ ccid2hctx_ssthresh; struct ccid2_seq* ccid2hctx_seqt; struct ccid2_seq* ccid2hctx_seqh; } ;
struct TYPE_2__ {int dccpd_type; void* dccpd_ack_seq; void* dccpd_seq; } ;


 unsigned char DCCP_ACKVEC_LEN_MASK ;
 scalar_t__ const DCCP_ACKVEC_STATE_ECN_MARKED ;
 unsigned char DCCP_ACKVEC_STATE_MASK ;
 scalar_t__ const DCCP_ACKVEC_STATE_NOT_RECEIVED ;


 TYPE_1__* DCCP_SKB_CB (struct sk_buff*) ;
 unsigned int DIV_ROUND_UP (int,int) ;
 int NUMDUPACK ;
 void* SUB48 (void*,scalar_t__ const) ;
 scalar_t__ after48 (void*,void*) ;
 scalar_t__ before48 (void*,void*) ;
 scalar_t__ between48 (void*,void*,void*) ;
 int ccid2_ackvector (struct sock*,struct sk_buff*,int,unsigned char**,unsigned char*) ;
 int ccid2_change_l_ack_ratio (struct sock*,int) ;
 int ccid2_congestion_event (struct sock*,struct ccid2_seq*) ;
 int ccid2_hc_tx_check_sanity (struct ccid2_hc_tx_sock*) ;
 int ccid2_hc_tx_dec_pipe (struct sock*) ;
 struct ccid2_hc_tx_sock* ccid2_hc_tx_sk (struct sock*) ;
 int ccid2_new_ack (struct sock*,struct ccid2_seq*,unsigned int*) ;
 int ccid2_pr_debug (char*,unsigned long long,...) ;
 int dccp_delta_seqno (void*,void*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static void ccid2_hc_tx_packet_recv(struct sock *sk, struct sk_buff *skb)
{
 struct dccp_sock *dp = dccp_sk(sk);
 struct ccid2_hc_tx_sock *hctx = ccid2_hc_tx_sk(sk);
 u64 ackno, seqno;
 struct ccid2_seq *seqp;
 unsigned char *vector;
 unsigned char veclen;
 int offset = 0;
 int done = 0;
 unsigned int maxincr = 0;

 ccid2_hc_tx_check_sanity(hctx);

 seqno = DCCP_SKB_CB(skb)->dccpd_seq;






 if (hctx->ccid2hctx_rpdupack == -1) {
  hctx->ccid2hctx_rpdupack = 0;
  hctx->ccid2hctx_rpseq = seqno;
 } else {

  if (dccp_delta_seqno(hctx->ccid2hctx_rpseq, seqno) == 1)
   hctx->ccid2hctx_rpseq = seqno;

  else if (after48(seqno, hctx->ccid2hctx_rpseq)) {
   hctx->ccid2hctx_rpdupack++;


   if (hctx->ccid2hctx_rpdupack >= NUMDUPACK) {
    hctx->ccid2hctx_rpdupack = -1;
    hctx->ccid2hctx_rpseq = 0;

    ccid2_change_l_ack_ratio(sk, 2 * dp->dccps_l_ack_ratio);
   }
  }
 }



 if (hctx->ccid2hctx_seqh == hctx->ccid2hctx_seqt)
  return;

 switch (DCCP_SKB_CB(skb)->dccpd_type) {
 case 129:
 case 128:
  break;
 default:
  return;
 }

 ackno = DCCP_SKB_CB(skb)->dccpd_ack_seq;
 if (after48(ackno, hctx->ccid2hctx_high_ack))
  hctx->ccid2hctx_high_ack = ackno;

 seqp = hctx->ccid2hctx_seqt;
 while (before48(seqp->ccid2s_seq, ackno)) {
  seqp = seqp->ccid2s_next;
  if (seqp == hctx->ccid2hctx_seqh) {
   seqp = hctx->ccid2hctx_seqh->ccid2s_prev;
   break;
  }
 }






 if (hctx->ccid2hctx_cwnd < hctx->ccid2hctx_ssthresh)
  maxincr = DIV_ROUND_UP(dp->dccps_l_ack_ratio, 2);


 while ((offset = ccid2_ackvector(sk, skb, offset,
      &vector, &veclen)) != -1) {

  while (veclen--) {
   const u8 rl = *vector & DCCP_ACKVEC_LEN_MASK;
   u64 ackno_end_rl = SUB48(ackno, rl);

   ccid2_pr_debug("ackvec start:%llu end:%llu\n",
           (unsigned long long)ackno,
           (unsigned long long)ackno_end_rl);




   while (after48(seqp->ccid2s_seq, ackno)) {
    if (seqp == hctx->ccid2hctx_seqt) {
     done = 1;
     break;
    }
    seqp = seqp->ccid2s_prev;
   }
   if (done)
    break;




   while (between48(seqp->ccid2s_seq,ackno_end_rl,ackno)) {
    const u8 state = *vector &
       DCCP_ACKVEC_STATE_MASK;


    if (state != DCCP_ACKVEC_STATE_NOT_RECEIVED &&
        !seqp->ccid2s_acked) {
     if (state ==
         DCCP_ACKVEC_STATE_ECN_MARKED) {
      ccid2_congestion_event(sk,
               seqp);
     } else
      ccid2_new_ack(sk, seqp,
             &maxincr);

     seqp->ccid2s_acked = 1;
     ccid2_pr_debug("Got ack for %llu\n",
             (unsigned long long)seqp->ccid2s_seq);
     ccid2_hc_tx_dec_pipe(sk);
    }
    if (seqp == hctx->ccid2hctx_seqt) {
     done = 1;
     break;
    }
    seqp = seqp->ccid2s_prev;
   }
   if (done)
    break;

   ackno = SUB48(ackno_end_rl, 1);
   vector++;
  }
  if (done)
   break;
 }




 seqp = hctx->ccid2hctx_seqt;
 while (before48(seqp->ccid2s_seq, hctx->ccid2hctx_high_ack)) {
  seqp = seqp->ccid2s_next;
  if (seqp == hctx->ccid2hctx_seqh) {
   seqp = hctx->ccid2hctx_seqh->ccid2s_prev;
   break;
  }
 }
 done = 0;
 while (1) {
  if (seqp->ccid2s_acked) {
   done++;
   if (done == NUMDUPACK)
    break;
  }
  if (seqp == hctx->ccid2hctx_seqt)
   break;
  seqp = seqp->ccid2s_prev;
 }




 if (done == NUMDUPACK) {
  struct ccid2_seq *last_acked = seqp;


  while (1) {
   if (!seqp->ccid2s_acked) {
    ccid2_pr_debug("Packet lost: %llu\n",
            (unsigned long long)seqp->ccid2s_seq);




    ccid2_congestion_event(sk, seqp);
    ccid2_hc_tx_dec_pipe(sk);
   }
   if (seqp == hctx->ccid2hctx_seqt)
    break;
   seqp = seqp->ccid2s_prev;
  }

  hctx->ccid2hctx_seqt = last_acked;
 }


 while (hctx->ccid2hctx_seqt != hctx->ccid2hctx_seqh) {
  if (!hctx->ccid2hctx_seqt->ccid2s_acked)
   break;

  hctx->ccid2hctx_seqt = hctx->ccid2hctx_seqt->ccid2s_next;
 }

 ccid2_hc_tx_check_sanity(hctx);
}
