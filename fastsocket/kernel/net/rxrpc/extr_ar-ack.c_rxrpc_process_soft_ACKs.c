
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rxrpc_skb_priv {int need_resend; unsigned long resend_at; } ;
struct rxrpc_call {int acks_head; int acks_tail; int acks_winsz; unsigned long* acks_window; int acks_unacked; int acks_hard; } ;
struct rxrpc_ackpacket {int nAcks; } ;


 int CIRC_CNT (int,int,int) ;
 int EPROTO ;


 int RXRPC_MAXACKS ;
 int _debug (char*,int) ;
 int _enter (char*,int ,int ,int) ;
 int _leave (char*) ;
 scalar_t__ jiffies ;
 int rxrpc_set_resend (struct rxrpc_call*,int,unsigned long) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int ,int*,int) ;
 int smp_mb () ;
 int smp_read_barrier_depends () ;
 scalar_t__ time_after_eq (scalar_t__,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int rxrpc_process_soft_ACKs(struct rxrpc_call *call,
       struct rxrpc_ackpacket *ack,
       struct sk_buff *skb)
{
 struct rxrpc_skb_priv *sp;
 struct sk_buff *txb;
 unsigned long *p_txb, resend_at;
 int loop;
 u8 sacks[RXRPC_MAXACKS], resend;

 _enter("{%d,%d},{%d},",
        call->acks_hard,
        CIRC_CNT(call->acks_head, call->acks_tail, call->acks_winsz),
        ack->nAcks);

 if (skb_copy_bits(skb, 0, sacks, ack->nAcks) < 0)
  goto protocol_error;

 resend = 0;
 resend_at = 0;
 for (loop = 0; loop < ack->nAcks; loop++) {
  p_txb = call->acks_window;
  p_txb += (call->acks_tail + loop) & (call->acks_winsz - 1);
  smp_read_barrier_depends();
  txb = (struct sk_buff *) (*p_txb & ~1);
  sp = rxrpc_skb(txb);

  switch (sacks[loop]) {
  case 129:
   sp->need_resend = 0;
   *p_txb |= 1;
   break;
  case 128:
   sp->need_resend = 1;
   *p_txb &= ~1;
   resend = 1;
   break;
  default:
   _debug("Unsupported ACK type %d", sacks[loop]);
   goto protocol_error;
  }
 }

 smp_mb();
 call->acks_unacked = (call->acks_tail + loop) & (call->acks_winsz - 1);



 for (loop = call->acks_unacked;
      loop != call->acks_head;
      loop = (loop + 1) & (call->acks_winsz - 1)
      ) {
  p_txb = call->acks_window + loop;
  smp_read_barrier_depends();
  txb = (struct sk_buff *) (*p_txb & ~1);
  sp = rxrpc_skb(txb);

  if (*p_txb & 1) {

   sp->need_resend = 1;
   *p_txb &= ~1;
   resend |= 1;
  } else if (sp->need_resend) {
   ;
  } else if (time_after_eq(jiffies + 1, sp->resend_at)) {
   sp->need_resend = 1;
   resend |= 1;
  } else if (resend & 2) {
   if (time_before(sp->resend_at, resend_at))
    resend_at = sp->resend_at;
  } else {
   resend_at = sp->resend_at;
   resend |= 2;
  }
 }

 rxrpc_set_resend(call, resend, resend_at);
 _leave(" = 0");
 return 0;

protocol_error:
 _leave(" = -EPROTO");
 return -EPROTO;
}
