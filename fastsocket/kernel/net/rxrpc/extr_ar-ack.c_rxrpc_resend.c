
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ head; } ;
struct TYPE_3__ {int seq; int serial; } ;
struct rxrpc_skb_priv {int need_resend; unsigned long resend_at; TYPE_1__ hdr; } ;
struct rxrpc_header {int serial; } ;
struct rxrpc_call {int acks_head; int acks_tail; int acks_winsz; unsigned long* acks_window; TYPE_2__* conn; int sequence; int acks_unacked; int acks_hard; } ;
struct TYPE_4__ {int trans; int serial; } ;


 int CIRC_CNT (int,int,int) ;
 int HZ ;
 int _enter (char*,int ,int ,int ,int ) ;
 int _leave (char*) ;
 int _proto (char*,int ,int ) ;
 int atomic_inc_return (int *) ;
 int atomic_read (int *) ;
 int htonl (int ) ;
 void* jiffies ;
 int ntohl (int ) ;
 int rxrpc_resend_timeout ;
 scalar_t__ rxrpc_send_packet (int ,struct sk_buff*) ;
 int rxrpc_set_resend (struct rxrpc_call*,int,unsigned long) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int smp_read_barrier_depends () ;
 scalar_t__ time_after_eq (void*,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static void rxrpc_resend(struct rxrpc_call *call)
{
 struct rxrpc_skb_priv *sp;
 struct rxrpc_header *hdr;
 struct sk_buff *txb;
 unsigned long *p_txb, resend_at;
 int loop, stop;
 u8 resend;

 _enter("{%d,%d,%d,%d},",
        call->acks_hard, call->acks_unacked,
        atomic_read(&call->sequence),
        CIRC_CNT(call->acks_head, call->acks_tail, call->acks_winsz));

 stop = 0;
 resend = 0;
 resend_at = 0;

 for (loop = call->acks_tail;
      loop != call->acks_head || stop;
      loop = (loop + 1) & (call->acks_winsz - 1)
      ) {
  p_txb = call->acks_window + loop;
  smp_read_barrier_depends();
  if (*p_txb & 1)
   continue;

  txb = (struct sk_buff *) *p_txb;
  sp = rxrpc_skb(txb);

  if (sp->need_resend) {
   sp->need_resend = 0;


   sp->hdr.serial =
    htonl(atomic_inc_return(&call->conn->serial));

   hdr = (struct rxrpc_header *) txb->head;
   hdr->serial = sp->hdr.serial;

   _proto("Tx DATA %%%u { #%d }",
          ntohl(sp->hdr.serial), ntohl(sp->hdr.seq));
   if (rxrpc_send_packet(call->conn->trans, txb) < 0) {
    stop = 0;
    sp->resend_at = jiffies + 3;
   } else {
    sp->resend_at =
     jiffies + rxrpc_resend_timeout * HZ;
   }
  }

  if (time_after_eq(jiffies + 1, sp->resend_at)) {
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
 _leave("");
}
