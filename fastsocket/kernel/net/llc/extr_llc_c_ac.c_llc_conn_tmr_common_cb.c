
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_conn_state_ev {int type; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct llc_conn_state_ev* llc_conn_ev (struct sk_buff*) ;
 int llc_process_tmr_ev (struct sock*,struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;

__attribute__((used)) static void llc_conn_tmr_common_cb(unsigned long timeout_data, u8 type)
{
 struct sock *sk = (struct sock *)timeout_data;
 struct sk_buff *skb = alloc_skb(0, GFP_ATOMIC);

 bh_lock_sock(sk);
 if (skb) {
  struct llc_conn_state_ev *ev = llc_conn_ev(skb);

  skb_set_owner_r(skb, sk);
  ev->type = type;
  llc_process_tmr_ev(sk, skb);
 }
 bh_unlock_sock(sk);
}
