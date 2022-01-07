
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int seq; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_call {int acks_winsz; unsigned long* acks_window; int acks_tail; int acks_head; } ;


 scalar_t__ CIRC_CNT (int ,int,int) ;
 int _debug (char*,int ) ;
 int kfree (unsigned long*) ;
 int ntohl (int ) ;
 int rxrpc_free_skb (struct sk_buff*) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int smp_mb () ;
 int smp_read_barrier_depends () ;

__attribute__((used)) static void rxrpc_zap_tx_window(struct rxrpc_call *call)
{
 struct rxrpc_skb_priv *sp;
 struct sk_buff *skb;
 unsigned long _skb, *acks_window;
 u8 winsz = call->acks_winsz;
 int tail;

 acks_window = call->acks_window;
 call->acks_window = ((void*)0);

 while (CIRC_CNT(call->acks_head, call->acks_tail, winsz) > 0) {
  tail = call->acks_tail;
  smp_read_barrier_depends();
  _skb = acks_window[tail] & ~1;
  smp_mb();
  call->acks_tail = (call->acks_tail + 1) & (winsz - 1);

  skb = (struct sk_buff *) _skb;
  sp = rxrpc_skb(skb);
  _debug("+++ clear Tx %u", ntohl(sp->hdr.seq));
  rxrpc_free_skb(skb);
 }

 kfree(acks_window);
}
