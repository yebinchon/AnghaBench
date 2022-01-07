
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct sk_buff {scalar_t__ len; int rxhash; } ;


 int TCP_CHECK_TIMER (struct sock*) ;
 scalar_t__ TCP_ESTABLISHED ;
 int TCP_INC_STATS_BH (int ,int ) ;
 scalar_t__ TCP_LISTEN ;
 int TCP_MIB_INERRS ;
 int kfree_skb (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int sock_rps_save_rxhash (struct sock*,int ) ;
 scalar_t__ tcp_checksum_complete (struct sk_buff*) ;
 scalar_t__ tcp_child_process (struct sock*,struct sock*,struct sk_buff*) ;
 int tcp_hdr (struct sk_buff*) ;
 scalar_t__ tcp_hdrlen (struct sk_buff*) ;
 scalar_t__ tcp_rcv_established (struct sock*,struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ tcp_rcv_state_process (struct sock*,struct sk_buff*,int ,scalar_t__) ;
 struct sock* tcp_v4_hnd_req (struct sock*,struct sk_buff*) ;
 scalar_t__ tcp_v4_inbound_md5_hash (struct sock*,struct sk_buff*) ;
 int tcp_v4_send_reset (struct sock*,struct sk_buff*) ;

int tcp_v4_do_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct sock *rsk;
 if (sk->sk_state == TCP_ESTABLISHED) {
  TCP_CHECK_TIMER(sk);
  if (tcp_rcv_established(sk, skb, tcp_hdr(skb), skb->len)) {
   rsk = sk;
   goto reset;
  }
  TCP_CHECK_TIMER(sk);
  return 0;
 }

 if (skb->len < tcp_hdrlen(skb) || tcp_checksum_complete(skb))
  goto csum_err;

 if (sk->sk_state == TCP_LISTEN) {
  struct sock *nsk = tcp_v4_hnd_req(sk, skb);
  if (!nsk)
   goto discard;

  if (nsk != sk) {
   sock_rps_save_rxhash(nsk, skb->rxhash);
   if (tcp_child_process(sk, nsk, skb)) {
    rsk = nsk;
    goto reset;
   }
   return 0;
  }
 }

 TCP_CHECK_TIMER(sk);
 if (tcp_rcv_state_process(sk, skb, tcp_hdr(skb), skb->len)) {
  rsk = sk;
  goto reset;
 }
 TCP_CHECK_TIMER(sk);
 return 0;

reset:
 tcp_v4_send_reset(rsk, skb);
discard:
 kfree_skb(skb);





 return 0;

csum_err:
 TCP_INC_STATS_BH(sock_net(sk), TCP_MIB_INERRS);
 goto discard;
}
