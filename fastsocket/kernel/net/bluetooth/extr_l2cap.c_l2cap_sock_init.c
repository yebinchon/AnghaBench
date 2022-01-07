
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_type; } ;
struct l2cap_pinfo {int flush_to; scalar_t__ conf_len; scalar_t__ force_reliable; scalar_t__ role_switch; int sec_level; int fcs; int mode; scalar_t__ omtu; int imtu; } ;
struct TYPE_2__ {int defer_setup; } ;


 int BT_DBG (char*,struct sock*) ;
 int BT_SECURITY_LOW ;
 int INIT_LIST_HEAD (int ) ;
 int L2CAP_DEFAULT_FLUSH_TO ;
 int L2CAP_DEFAULT_MTU ;
 int L2CAP_FCS_CRC16 ;
 int L2CAP_MODE_BASIC ;
 int SREJ_LIST (struct sock*) ;
 int SREJ_QUEUE (struct sock*) ;
 int TX_QUEUE (struct sock*) ;
 TYPE_1__* bt_sk (struct sock*) ;
 struct l2cap_pinfo* l2cap_pi (struct sock*) ;
 int skb_queue_head_init (int ) ;

__attribute__((used)) static void l2cap_sock_init(struct sock *sk, struct sock *parent)
{
 struct l2cap_pinfo *pi = l2cap_pi(sk);

 BT_DBG("sk %p", sk);

 if (parent) {
  sk->sk_type = parent->sk_type;
  bt_sk(sk)->defer_setup = bt_sk(parent)->defer_setup;

  pi->imtu = l2cap_pi(parent)->imtu;
  pi->omtu = l2cap_pi(parent)->omtu;
  pi->mode = l2cap_pi(parent)->mode;
  pi->fcs = l2cap_pi(parent)->fcs;
  pi->sec_level = l2cap_pi(parent)->sec_level;
  pi->role_switch = l2cap_pi(parent)->role_switch;
  pi->force_reliable = l2cap_pi(parent)->force_reliable;
 } else {
  pi->imtu = L2CAP_DEFAULT_MTU;
  pi->omtu = 0;
  pi->mode = L2CAP_MODE_BASIC;
  pi->fcs = L2CAP_FCS_CRC16;
  pi->sec_level = BT_SECURITY_LOW;
  pi->role_switch = 0;
  pi->force_reliable = 0;
 }


 pi->conf_len = 0;
 pi->flush_to = L2CAP_DEFAULT_FLUSH_TO;
 skb_queue_head_init(TX_QUEUE(sk));
 skb_queue_head_init(SREJ_QUEUE(sk));
 INIT_LIST_HEAD(SREJ_LIST(sk));
}
