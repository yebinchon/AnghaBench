
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sock {int (* sk_state_change ) (struct sock*) ;TYPE_2__* sk_socket; int sk_shutdown; int sk_err; int sk_state; } ;
struct sk_buff {int len; int* data; } ;
struct dn_skb_cb {scalar_t__ src_port; } ;
struct TYPE_3__ {int opt_data; void* opt_optl; void* opt_status; } ;
struct dn_scp {int state; int persist; int persist_fxn; scalar_t__ addrrem; TYPE_1__ discdata_in; } ;
typedef int __le16 ;
struct TYPE_4__ {scalar_t__ state; } ;





 int DN_DIC ;
 int DN_DN ;
 int DN_RJ ;

 struct dn_scp* DN_SK (struct sock*) ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int ECONNREFUSED ;
 int GFP_ATOMIC ;
 int NSP_DISCCONF ;
 int NSP_REASON_DC ;
 int SHUTDOWN_MASK ;
 int SOCK_DEAD ;
 scalar_t__ SS_DISCONNECTING ;
 scalar_t__ SS_UNCONNECTED ;
 int TCP_CLOSE ;
 void* cpu_to_le16 (int) ;
 int dn_destroy_timer ;
 int dn_nsp_persist (struct sock*) ;
 int dn_nsp_send_disc (struct sock*,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 unsigned short le16_to_cpu (int ) ;
 int memset (int ,int ,int) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,int,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void dn_nsp_disc_init(struct sock *sk, struct sk_buff *skb)
{
 struct dn_scp *scp = DN_SK(sk);
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 unsigned short reason;

 if (skb->len < 2)
  goto out;

 reason = le16_to_cpu(*(__le16 *)skb->data);
 skb_pull(skb, 2);

 scp->discdata_in.opt_status = cpu_to_le16(reason);
 scp->discdata_in.opt_optl = 0;
 memset(scp->discdata_in.opt_data, 0, 16);

 if (skb->len > 0) {
  u16 dlen = *skb->data;
  if ((dlen <= 16) && (dlen <= skb->len)) {
   scp->discdata_in.opt_optl = cpu_to_le16(dlen);
   skb_copy_from_linear_data_offset(skb, 1, scp->discdata_in.opt_data, dlen);
  }
 }

 scp->addrrem = cb->src_port;
 sk->sk_state = TCP_CLOSE;

 switch(scp->state) {
  case 130:
  case 131:
   scp->state = DN_RJ;
   sk->sk_err = ECONNREFUSED;
   break;
  case 128:
   sk->sk_shutdown |= SHUTDOWN_MASK;
   scp->state = DN_DN;
   break;
  case 129:
   scp->state = DN_DIC;
   break;
 }

 if (!sock_flag(sk, SOCK_DEAD)) {
  if (sk->sk_socket->state != SS_UNCONNECTED)
   sk->sk_socket->state = SS_DISCONNECTING;
  sk->sk_state_change(sk);
 }







 if (scp->addrrem) {
  dn_nsp_send_disc(sk, NSP_DISCCONF, NSP_REASON_DC, GFP_ATOMIC);
 }
 scp->persist_fxn = dn_destroy_timer;
 scp->persist = dn_nsp_persist(sk);

out:
 kfree_skb(skb);
}
