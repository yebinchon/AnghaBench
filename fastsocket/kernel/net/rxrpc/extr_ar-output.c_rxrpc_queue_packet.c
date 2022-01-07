
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int seq; int serial; } ;
struct rxrpc_skb_priv {int need_resend; scalar_t__ resend_at; TYPE_1__ hdr; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct rxrpc_call {size_t acks_head; unsigned long* acks_window; int acks_winsz; int state; TYPE_2__* conn; int ack_timer; TYPE_3__ resend_timer; int flags; int state_lock; } ;
struct TYPE_5__ {int trans; } ;


 int ASSERT (int ) ;
 int EAGAIN ;
 int HZ ;
 int RXRPC_CALL_CLIENT_AWAIT_REPLY ;

 int RXRPC_CALL_RUN_RTIMER ;

 int RXRPC_CALL_SERVER_AWAIT_ACK ;

 int _debug (char*,...) ;
 int _leave (char*) ;
 int _net (char*,struct sk_buff*,...) ;
 int _proto (char*,int ,int ) ;
 int add_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;
 int ntohl (int ) ;
 int rxrpc_instant_resend (struct rxrpc_call*) ;
 int rxrpc_resend_timeout ;
 int rxrpc_send_packet (int ,struct sk_buff*) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int smp_wmb () ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ try_to_del_timer_sync (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void rxrpc_queue_packet(struct rxrpc_call *call, struct sk_buff *skb,
          bool last)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 int ret;

 _net("queue skb %p [%d]", skb, call->acks_head);

 ASSERT(call->acks_window != ((void*)0));
 call->acks_window[call->acks_head] = (unsigned long) skb;
 smp_wmb();
 call->acks_head = (call->acks_head + 1) & (call->acks_winsz - 1);

 if (last || call->state == 129) {
  _debug("________awaiting reply/ACK__________");
  write_lock_bh(&call->state_lock);
  switch (call->state) {
  case 130:
   call->state = RXRPC_CALL_CLIENT_AWAIT_REPLY;
   break;
  case 129:
   call->state = 128;
   if (!last)
    break;
  case 128:
   call->state = RXRPC_CALL_SERVER_AWAIT_ACK;
   break;
  default:
   break;
  }
  write_unlock_bh(&call->state_lock);
 }

 _proto("Tx DATA %%%u { #%u }",
        ntohl(sp->hdr.serial), ntohl(sp->hdr.seq));

 sp->need_resend = 0;
 sp->resend_at = jiffies + rxrpc_resend_timeout * HZ;
 if (!test_and_set_bit(RXRPC_CALL_RUN_RTIMER, &call->flags)) {
  _debug("run timer");
  call->resend_timer.expires = sp->resend_at;
  add_timer(&call->resend_timer);
 }



 ret = -EAGAIN;
 if (try_to_del_timer_sync(&call->ack_timer) >= 0) {


  ret = rxrpc_send_packet(call->conn->trans, skb);
  _net("sent skb %p", skb);
 } else {
  _debug("failed to delete ACK timer");
 }

 if (ret < 0) {
  _debug("need instant resend %d", ret);
  sp->need_resend = 1;
  rxrpc_instant_resend(call);
 }

 _leave("");
}
