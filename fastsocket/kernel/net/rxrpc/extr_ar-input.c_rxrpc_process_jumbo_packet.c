
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; int data_len; } ;
struct TYPE_2__ {int flags; void* serial; int _rsvd; void* seq; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_jumbo_header {int flags; int _rsvd; } ;
struct rxrpc_call {scalar_t__ state; int state_lock; int events; int abort_code; } ;
typedef int jhdr ;


 int BUG () ;
 int GFP_ATOMIC ;
 int RXRPC_CALL_ABORT ;
 scalar_t__ RXRPC_CALL_COMPLETE ;
 scalar_t__ RXRPC_CALL_LOCALLY_ABORTED ;
 int RXRPC_JUMBO_DATALEN ;
 int RXRPC_JUMBO_PACKET ;
 int RX_PROTOCOL_ERROR ;
 int _debug (char*) ;
 int _enter (char*,int ,int ) ;
 int _leave (char*) ;
 int _proto (char*,scalar_t__) ;
 void* htonl (scalar_t__) ;
 scalar_t__ ntohl (void*) ;
 int pskb_pull (struct sk_buff*,int) ;
 int pskb_trim (struct sk_buff*,int) ;
 int rxrpc_fast_process_packet (struct rxrpc_call*,struct sk_buff*) ;
 int rxrpc_free_skb (struct sk_buff*) ;
 int rxrpc_new_skb (struct sk_buff*) ;
 int rxrpc_queue_call (struct rxrpc_call*) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int set_bit (int ,int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int ,struct rxrpc_jumbo_header*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void rxrpc_process_jumbo_packet(struct rxrpc_call *call,
           struct sk_buff *jumbo)
{
 struct rxrpc_jumbo_header jhdr;
 struct rxrpc_skb_priv *sp;
 struct sk_buff *part;

 _enter(",{%u,%u}", jumbo->data_len, jumbo->len);

 sp = rxrpc_skb(jumbo);

 do {
  sp->hdr.flags &= ~RXRPC_JUMBO_PACKET;



  part = skb_clone(jumbo, GFP_ATOMIC);
  if (!part) {

   pskb_trim(jumbo, RXRPC_JUMBO_DATALEN);
   break;
  }
  rxrpc_new_skb(part);

  pskb_trim(part, RXRPC_JUMBO_DATALEN);

  if (!pskb_pull(jumbo, RXRPC_JUMBO_DATALEN))
   goto protocol_error;

  if (skb_copy_bits(jumbo, 0, &jhdr, sizeof(jhdr)) < 0)
   goto protocol_error;
  if (!pskb_pull(jumbo, sizeof(jhdr)))
   BUG();

  sp->hdr.seq = htonl(ntohl(sp->hdr.seq) + 1);
  sp->hdr.serial = htonl(ntohl(sp->hdr.serial) + 1);
  sp->hdr.flags = jhdr.flags;
  sp->hdr._rsvd = jhdr._rsvd;

  _proto("Rx DATA Jumbo %%%u", ntohl(sp->hdr.serial) - 1);

  rxrpc_fast_process_packet(call, part);
  part = ((void*)0);

 } while (sp->hdr.flags & RXRPC_JUMBO_PACKET);

 rxrpc_fast_process_packet(call, jumbo);
 _leave("");
 return;

protocol_error:
 _debug("protocol error");
 rxrpc_free_skb(part);
 rxrpc_free_skb(jumbo);
 write_lock_bh(&call->state_lock);
 if (call->state <= RXRPC_CALL_COMPLETE) {
  call->state = RXRPC_CALL_LOCALLY_ABORTED;
  call->abort_code = RX_PROTOCOL_ERROR;
  set_bit(RXRPC_CALL_ABORT, &call->events);
  rxrpc_queue_call(call);
 }
 write_unlock_bh(&call->state_lock);
 _leave("");
}
